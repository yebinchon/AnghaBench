
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned char tm_sec; unsigned char tm_min; unsigned char tm_hour; unsigned char tm_mday; int tm_mon; int tm_year; unsigned char tm_wday; } ;
struct device {int dummy; } ;


 int M48T86_B ;
 unsigned char M48T86_B_DM ;
 unsigned char M48T86_B_H24 ;
 unsigned char M48T86_B_SET ;
 int M48T86_DOM ;
 int M48T86_DOW ;
 int M48T86_HOUR ;
 int M48T86_MIN ;
 int M48T86_MONTH ;
 int M48T86_SEC ;
 int M48T86_YEAR ;
 unsigned char bin2bcd (int) ;
 unsigned char m48t86_readb (struct device*,int ) ;
 int m48t86_writeb (struct device*,unsigned char,int ) ;

__attribute__((used)) static int m48t86_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char reg;

 reg = m48t86_readb(dev, M48T86_B);


 reg |= M48T86_B_SET | M48T86_B_H24;
 m48t86_writeb(dev, reg, M48T86_B);

 if (reg & M48T86_B_DM) {

  m48t86_writeb(dev, tm->tm_sec, M48T86_SEC);
  m48t86_writeb(dev, tm->tm_min, M48T86_MIN);
  m48t86_writeb(dev, tm->tm_hour, M48T86_HOUR);
  m48t86_writeb(dev, tm->tm_mday, M48T86_DOM);
  m48t86_writeb(dev, tm->tm_mon + 1, M48T86_MONTH);
  m48t86_writeb(dev, tm->tm_year % 100, M48T86_YEAR);
  m48t86_writeb(dev, tm->tm_wday, M48T86_DOW);
 } else {

  m48t86_writeb(dev, bin2bcd(tm->tm_sec), M48T86_SEC);
  m48t86_writeb(dev, bin2bcd(tm->tm_min), M48T86_MIN);
  m48t86_writeb(dev, bin2bcd(tm->tm_hour), M48T86_HOUR);
  m48t86_writeb(dev, bin2bcd(tm->tm_mday), M48T86_DOM);
  m48t86_writeb(dev, bin2bcd(tm->tm_mon + 1), M48T86_MONTH);
  m48t86_writeb(dev, bin2bcd(tm->tm_year % 100), M48T86_YEAR);
  m48t86_writeb(dev, bin2bcd(tm->tm_wday), M48T86_DOW);
 }


 reg &= ~M48T86_B_SET;
 m48t86_writeb(dev, reg, M48T86_B);

 return 0;
}
