# mydata <- read.delim("clipboard")

library(plotrix)

# # M40BDE47
# 
# "4" "8" "12" "16" "4" "8" "12" "16"
# "soybean solution" 149676 59745 3990 341 8644 5489 1438 47
# "soybean roots" 25823 103867 151167 159638 5480 3740 10217 10339
# "soybean stems" 8134 18774 25800 21070 439 387 2665 1295
# "soybean leaves" 568 1001 1847 1942 170 8 92 61
# "wheat solution" 143810 60142 7380 667 694 10190 4395 309
# "wheat roots" 30571 102688 150900 162550 1352 3062 2808 2945
# "wheat stems" 7007 14307 21733 21283 959 692 1130 2584
# "wheat leaves" 704 958 1500 1860 55 8 512 58
# "Unplanted wheat solution" 193547 192201 189764 184476 827 1943 3981 4493
# 
# 
# # M6BDE47
# 
# "4" "8" "12" "16" "4" "8" "12" "16"
# "soybean solution" 146269 64863 9430 971 5389 5040 543 286
# "soybean roots" 27739 99697 147152 158463 616 2973 2115 1935
# "soybean stems" 6641 17126 21747 22928 1210 903 915 492
# "soybean leaves" 684 931 1780 1806 53 8 25 56
# "wheat solution" 140488 49313 9562 588 5582 5874 623 138
# "wheat roots" 34401 114994 148144 159812 5113 6997 5396 2583
# "wheat stems" 3438 19182 24357 23346 784 1012 1024 2424
# "wheat leaves" 566 1042 1994 2023 147 9 28 63
# "Unplanted wheat solution" 191250 190382 189782 183956 4041 744 910 3296
# 
# # O4BDE42
# 
# "4" "8" "12" "16" "4" "8" "12" "16"
# "soybean solution" 144776 68362 584 230 1686 6299 81 80
# "soybean roots" 37976 105366 161158 164476 3880 6982 1665 3908
# "soybean stems" 1574 8779 12520 12940 115 1057 1505 1590
# "soybean leaves" 117 285 390 479 40 66 50 52
# "wheat solution" 141429 72284 488 218 2221 5026 94 71
# "wheat roots" 42702 109673 165743 165363 4029 3149 2868 3744
# "wheat stems" 435 1644 13871 13601 133 354 335 908
# "wheat leaves" 50 175 653 542 18 32 144 119
# "Unplanted wheat solution" 185498 185226 182190 181815 1267 804 1150 1688
# 
# # O3BDE47
# 
# "4" "8" "12" "16" "4" "8" "12" "16"
# "soybean solution" 142652 72433 391 117 2696 3188 50 12
# "soybean roots" 40261 102347 169013 169617 1107 1265 1391 1596
# "soybean stems" 1213 7031 11002 12842 100 383 660 601
# "soybean leaves" 150 312 472 501 18 28 31 22
# "wheat solution" 145599 72530 397 280 4103 4453 60 55
# "wheat roots" 36555 106834 172790 171560 3500 5864 1380 808
# "wheat stems" 1110 6076 10644 12408 116 253 821 317
# "wheat leaves" 100 252 375 333 34 50 60 15
# "Unplanted wheat solution" 184726 185769 183546 184560 542 671 1011 1987


M6BDE47 <- read.table('data/M6BDE47')

M40BDE47 <- read.table('data/M40BDE47')

O4BDE42 <- read.table('data/O4BDE42')

O3BDE47 <- read.table('data/O40BDE47')

M6BDE47$first <- c(200000,-38000,-38000,0,200000,-38000,-38000,0,200000)
M6BDE47$second <- c(0,0,0,0,0,0,0,0,0)

ss <- t(M6BDE47[1,c(9,1:4)])
ss[5] <- ss[5]*20-38000
sss <- t(M6BDE47[1,1:4])
sss[4] <- sss[4]*20-38000
sssd <- t(M6BDE47[1,5:8])
sssd[4] <- sssd[4]*20

sr <- t(M6BDE47[2,c(9,1:4)])
ssr <- t(M6BDE47[2,1:4])
srsd <- t(M6BDE47[2,5:8])

st <- t(M6BDE47[3,c(9,1:4)])
sst <-  t(M6BDE47[3,1:4])
stsd <- t(M6BDE47[3,5:8])

sl <- t(M6BDE47[4,c(9,1:4)])*20-38000
ssl <- t(M6BDE47[4,1:4])*20-38000
slsd <- t(M6BDE47[4,5:8])*20

ws <- t(M6BDE47[5,c(9,1:4)])
ws[5] <- ws[5]*20-38000
wws <- t(M6BDE47[5,1:4])
wws[4] <- wws[4]*20-38000
wssd <- t(M6BDE47[5,5:8])
wssd[4] <- wssd[4]*20

wr <- t(M6BDE47[6,c(9,1:4)])
wwr <- t(M6BDE47[6,1:4])
wrsd <- t(M6BDE47[6,5:8])

wt <- t(M6BDE47[7,c(9,1:4)])
wwt <- t(M6BDE47[7,1:4])
wtsd <- t(M6BDE47[7,5:8])

wl <- t(M6BDE47[8,c(9,1:4)])
wl[c(1:4)] <- wl[c(1:4)]*20-38000
wwl <- t(M6BDE47[8,1:4])
wwl[c(1:3)] <- wwl[c(1:3)]*20-38000
wlsd <- t(M6BDE47[8,5:8])
wlsd[c(1:3)] <- wlsd[c(1:3)]*20

us <- t(M6BDE47[9,c(9,1:4)])
uus <- t(M6BDE47[9,1:4])
ussd <- t(M6BDE47[9,5:8])
# bmp("sunpic.bmp",height=8,width=10,units = "in", res = 300)
pdf('sun.pdf',height = 8,width = 10)
par(mfrow = c(2,2),mar = c(4,4,2,2))
plot(ss,
     cex=1,
     axes=F,
     bty="n",
     type="b",
     xaxt="n",
     ylim=c(-40000,200000),
     xlab="Exposure time(days)",
     ylab="The amounts of compound(pg)")
axis(1,at=c(1:5),labels=c(0,4,8,12,16))
axis(2,at=c(-38000,2000,50000,100000,150000,200000),labels=c(0,2000,'50000','100000','150000','200000'))
axis.break(2,2200, style="slash") 

arrows(c(2:5), c(sss-sssd), c(2:5), c(sss+sssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssr-srsd), c(2:5), c(ssr+srsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(sst-stsd), c(2:5), c(sst+stsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssl-slsd), c(2:5), c(ssl+slsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wws-wssd), c(2:5), c(wws+wssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwr-wrsd), c(2:5), c(wwr+wrsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwt-wtsd), c(2:5), c(wwt+wtsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwl-wlsd), c(2:5), c(wwl+wlsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(uus-ussd), c(2:5), c(uus+ussd), code = 3, angle = 90, length = 0.03)

lines(sr,
      cex=1,
      pch=22,
      type="b")

lines(st,
      cex=1,
      pch=24,
      type="b")

lines(sl,
      cex=1,
      pch=23,
      type="b")

lines(ws,
      cex=1,
      type="b",
      lty=2)

lines(wr,
      cex=1,
      pch=22,
      type="b",
      lty=2)

lines(wt,
      cex=1,
      pch=24,
      type="b",
      lty=2)

lines(wl,
      cex=1,
      pch=23,
      type="b",
      lty=2)

lines(us,
      cex=1,
      type="b",
      lty=4)

mtext('(a)',
      side=3,
      adj=1)

legend(3.4,135000,
       cex = 0.8,
       box.lty=0,
       legend=c("unplanted control solution","soybean","wheat","root","stem","leaves","solution"),
       pch=c(21,-1,-1,22,24,23,21),
       lty=c(4,1,2,-1,-1,-1,-1)
       )


M40BDE47$first <- c(200000,-38000,-38000,0,200000,-38000,-38000,0,200000)
M40BDE47$second <- c(0,0,0,0,0,0,0,0,0)

ss <- t(M40BDE47[1,c(9,1:4)])
ss[5] <- ss[5]*20-38000
sss <- t(M40BDE47[1,1:4])
sss[4] <- sss[4]*20-38000
sssd <- t(M40BDE47[1,5:8])
sssd[4] <- sssd[4]*20

sr <- t(M40BDE47[2,c(9,1:4)])
ssr <- t(M40BDE47[2,1:4])
srsd <- t(M40BDE47[2,5:8])

st <- t(M40BDE47[3,c(9,1:4)])
sst <-  t(M40BDE47[3,1:4])
stsd <- t(M40BDE47[3,5:8])

sl <- t(M40BDE47[4,c(9,1:4)])*20-38000
ssl <- t(M40BDE47[4,1:4])*20-38000
slsd <- t(M40BDE47[4,5:8])*20

ws <- t(M40BDE47[5,c(9,1:4)])
ws[5] <- ws[5]*20-38000
wws <- t(M40BDE47[5,1:4])
wws[4] <- wws[4]*20-38000
wssd <- t(M40BDE47[5,5:8])
wssd[4] <- wssd[4]*20

wr <- t(M40BDE47[6,c(9,1:4)])
wwr <- t(M40BDE47[6,1:4])
wrsd <- t(M40BDE47[6,5:8])

wt <- t(M40BDE47[7,c(9,1:4)])
wwt <- t(M40BDE47[7,1:4])
wtsd <- t(M40BDE47[7,5:8])

wl <- t(M40BDE47[8,c(9,1:4)])*20-38000
wwl <- t(M40BDE47[8,1:4])*20-38000
wlsd <- t(M40BDE47[8,5:8])*20

us <- t(M40BDE47[9,c(9,1:4)])
uus <- t(M40BDE47[9,1:4])
ussd <- t(M40BDE47[9,5:8])

plot(ss,
     cex=1,
     axes=F,
     bty="n",
     type="b",
     xaxt="n",
     ylim=c(-40000,200000),
     xlab="Exposure time(days)",
     ylab="The amounts of compound(pg)")
axis(1,at=c(1:5),labels=c(0,4,8,12,16))
axis(2,at=c(-38000,2000,50000,100000,150000,200000),labels=c(0,2000,'50000','100000','150000','200000'))
axis.break(2,2200, style="slash") 

arrows(c(2:5), c(sss-sssd), c(2:5), c(sss+sssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssr-srsd), c(2:5), c(ssr+srsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(sst-stsd), c(2:5), c(sst+stsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssl-slsd), c(2:5), c(ssl+slsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wws-wssd), c(2:5), c(wws+wssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwr-wrsd), c(2:5), c(wwr+wrsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwt-wtsd), c(2:5), c(wwt+wtsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwl-wlsd), c(2:5), c(wwl+wlsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(uus-ussd), c(2:5), c(uus+ussd), code = 3, angle = 90, length = 0.03)

lines(sr,
      cex=1,
      pch=22,
      type="b")

lines(st,
      cex=1,
      pch=24,
      type="b")

lines(sl,
      cex=1,
      pch=23,
      type="b")

lines(ws,
      cex=1,
      type="b",
      lty=2)

lines(wr,
      cex=1,
      pch=22,
      type="b",
      lty=2)

lines(wt,
      cex=1,
      pch=24,
      type="b",
      lty=2)

lines(wl,
      cex=1,
      pch=23,
      type="b",
      lty=2)

lines(us,
      cex=1,
      type="b",
      lty=4)

mtext('(b)',
      side=3,
      adj=1)

legend(3.4,135000,
       cex = 0.8,
       box.lty=0,
       legend=c("unplanted control solution","soybean","wheat","root","stem","leaves","solution"),
       pch=c(21,-1,-1,22,24,23,21),
       lty=c(4,1,2,-1,-1,-1,-1)
       )


O4BDE42$first <- c(200000,-38000,-38000,0,200000,-38000,-38000,0,200000)
O4BDE42$second <- c(0,0,0,0,0,0,0,0,0)

ss <- t(O4BDE42[1,c(9,1:4)])
ss[c(4:5)] <- ss[c(4:5)]*20-38000
sss <- t(O4BDE42[1,1:4])
sss[c(3:4)] <- sss[c(3:4)]*20-38000
sssd <- t(O4BDE42[1,5:8])
sssd[c(3:4)] <- sssd[c(3:4)]*20

sr <- t(O4BDE42[2,c(9,1:4)])
ssr <- t(O4BDE42[2,1:4])
srsd <- t(O4BDE42[2,5:8])

st <- t(O4BDE42[3,c(9,1:4)])
st[2] <- st[2]*20-38000
sst <-  t(O4BDE42[3,1:4])
sst[1] <- st[1]*20-38000
stsd <- t(O4BDE42[3,5:8])
stsd[1] <- stsd[1]*20

sl <- t(O4BDE42[4,c(9,1:4)])*20-38000
ssl <- t(O4BDE42[4,1:4])*20-38000
slsd <- t(O4BDE42[4,5:8])*20

ws <- t(O4BDE42[5,c(9,1:4)])
ws[c(4:5)] <- ws[c(4:5)]*20-38000
wws <- t(O4BDE42[5,1:4])
wws[c(3:4)] <- wws[c(3:4)]*20-38000
wssd <- t(O4BDE42[5,5:8])
wssd[c(3:4)] <- wssd[c(3:4)]*20

wr <- t(O4BDE42[6,c(9,1:4)])
wwr <- t(O4BDE42[6,1:4])
wrsd <- t(O4BDE42[6,5:8])

wt <- t(O4BDE42[7,c(9,1:4)])
wt[c(2:3)] <- wt[c(2:3)]*20-38000
wwt <- t(O4BDE42[7,1:4])
wwt[c(1:2)] <- wwt[c(1:2)]*20-38000
wtsd <- t(O4BDE42[7,5:8])
wtsd[c(1:2)] <- wtsd[c(1:2)]*20

wl <- t(O4BDE42[8,c(9,1:4)])*20-38000
wwl <- t(O4BDE42[8,1:4])*20-38000
wlsd <- t(O4BDE42[8,5:8])*20

us <- t(O4BDE42[9,c(9,1:4)])
uus <- t(O4BDE42[9,1:4])
ussd <- t(O4BDE42[9,5:8])


plot(ss,
     cex=1,
     axes=F,
     bty="n",
     type="b",
     xaxt="n",
     ylim=c(-40000,200000),
     xlab="Exposure time(days)",
     ylab="The amounts of compound(pg)")
axis(1,at=c(1:5),labels=c(0,4,8,12,16))
axis(2,at=c(-38000,2000,50000,100000,150000,200000),labels=c(0,2000,'50000','100000','150000','200000'))
axis.break(2,2200, style="slash") 

arrows(c(2:5), c(sss-sssd), c(2:5), c(sss+sssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssr-srsd), c(2:5), c(ssr+srsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(sst-stsd), c(2:5), c(sst+stsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssl-slsd), c(2:5), c(ssl+slsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wws-wssd), c(2:5), c(wws+wssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwr-wrsd), c(2:5), c(wwr+wrsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwt-wtsd), c(2:5), c(wwt+wtsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwl-wlsd), c(2:5), c(wwl+wlsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(uus-ussd), c(2:5), c(uus+ussd), code = 3, angle = 90, length = 0.03)

lines(sr,
      cex=1,
      pch=22,
      type="b")

lines(st,
      cex=1,
      pch=24,
      type="b")

lines(sl,
      cex=1,
      pch=23,
      type="b")

lines(ws,
      cex=1,
      type="b",
      lty=2)

lines(wr,
      cex=1,
      pch=22,
      type="b",
      lty=2)

lines(wt,
      cex=1,
      pch=24,
      type="b",
      lty=2)

lines(wl,
      cex=1,
      pch=23,
      type="b",
      lty=2)

lines(us,
      cex=1,
      type="b",
      lty=4)

mtext('(c)',
      side=3,
      adj=1)

legend(3.4,135000,
       cex = 0.8,
       box.lty=0,
       legend=c("unplanted control solution","soybean","wheat","root","stem","leaves","solution"),
       pch=c(21,-1,-1,22,24,23,21),
       lty=c(4,1,2,-1,-1,-1,-1)
       )


O3BDE47$first <- c(200000,-38000,-38000,0,200000,-38000,-38000,0,200000)
O3BDE47$second <- c(0,0,0,0,0,0,0,0,0)

ss <- t(O3BDE47[1,c(9,1:4)])
ss[c(4:5)] <- ss[c(4:5)]*20-38000
sss <- t(O3BDE47[1,1:4])
sss[c(3:4)] <- sss[c(3:4)]*20-38000
sssd <- t(O3BDE47[1,5:8])
sssd[c(3:4)] <- sssd[c(3:4)]*20

sr <- t(O3BDE47[2,c(9,1:4)])
ssr <- t(O3BDE47[2,1:4])
srsd <- t(O3BDE47[2,5:8])

st <- t(O3BDE47[3,c(9,1:4)])
st[2] <- st[2]*20-38000
sst <-  t(O3BDE47[3,1:4])
sst[1] <- sst[1]*20-38000
stsd <- t(O3BDE47[3,5:8])
stsd[1] <- stsd[1]*20

sl <- t(O3BDE47[4,c(9,1:4)])*20-38000
ssl <- t(O3BDE47[4,1:4])*20-38000
slsd <- t(O3BDE47[4,5:8])*20

ws <- t(O3BDE47[5,c(9,1:4)])
ws[c(4:5)] <- ws[c(4:5)]*20-38000
wws <- t(O3BDE47[5,1:4])
wws[c(3:4)] <- wws[c(3:4)]*20-38000
wssd <- t(O3BDE47[5,5:8])
wssd[c(3:4)] <- wssd[c(3:4)]*20

wr <- t(O3BDE47[6,c(9,1:4)])
wwr <- t(O3BDE47[6,1:4])
wrsd <- t(O3BDE47[6,5:8])

wt <- t(O3BDE47[7,c(9,1:4)])
wt[2] <- wt[2]*20-38000
wwt <- t(O3BDE47[7,1:4])
wwt[1] <- wwt[1]*20-38000
wtsd <- t(O3BDE47[7,5:8])
wtsd[1] <- wtsd[1]*20

wl <- t(O3BDE47[8,c(9,1:4)])*20-38000
wwl <- t(O3BDE47[8,1:4])*20-38000
wlsd <- t(O3BDE47[8,5:8])*20

us <- t(O3BDE47[9,c(9,1:4)])
uus <- t(O3BDE47[9,1:4])
ussd <- t(O3BDE47[9,5:8])

plot(ss,
     cex=1,
     axes=F,
     bty="n",
     type="b",
     xaxt="n",
     ylim=c(-40000,200000),
     xlab="Exposure time(days)",
     ylab="The amounts of compound(pg)")
axis(1,at=c(1:5),labels=c(0,4,8,12,16))
axis(2,at=c(-38000,2000,50000,100000,150000,200000),labels=c(0,2000,'50000','100000','150000','200000'))
axis.break(2,2200, style="slash") 

arrows(c(2:5), c(sss-sssd), c(2:5), c(sss+sssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssr-srsd), c(2:5), c(ssr+srsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(sst-stsd), c(2:5), c(sst+stsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(ssl-slsd), c(2:5), c(ssl+slsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wws-wssd), c(2:5), c(wws+wssd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwr-wrsd), c(2:5), c(wwr+wrsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwt-wtsd), c(2:5), c(wwt+wtsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(wwl-wlsd), c(2:5), c(wwl+wlsd), code = 3, angle = 90, length = 0.03)
arrows(c(2:5), c(uus-ussd), c(2:5), c(uus+ussd), code = 3, angle = 90, length = 0.03)

lines(sr,
      cex=1,
      pch=22,
      type="b")

lines(st,
      cex=1,
      pch=24,
      type="b")

lines(sl,
      cex=1,
      pch=23,
      type="b")

lines(ws,
      cex=1,
      type="b",
      lty=2)

lines(wr,
      cex=1,
      pch=22,
      type="b",
      lty=2)

lines(wt,
      cex=1,
      pch=24,
      type="b",
      lty=2)

lines(wl,
      cex=1,
      pch=23,
      type="b",
      lty=2)

lines(us,
      cex=1,
      type="b",
      lty=4)

mtext('(d)',
      side=3,
      adj=1)

legend(3.4,135000,
       cex = 0.8,
       box.lty=0,
       legend=c("unplanted control solution","soybean","wheat","root","stem","leaves","solution"),
       pch=c(21,-1,-1,22,24,23,21),
       lty=c(4,1,2,-1,-1,-1,-1)
       )
dev.off()

