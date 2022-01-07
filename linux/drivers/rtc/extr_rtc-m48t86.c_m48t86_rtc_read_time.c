
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {int dummy; } ;


 int M48T86_B ;
 unsigned char M48T86_B_DM ;
 unsigned char M48T86_B_H24 ;
 int M48T86_DOM ;
 int M48T86_DOW ;
 int M48T86_HOUR ;
 int M48T86_MIN ;
 int M48T86_MONTH ;
 int M48T86_SEC ;
 int M48T86_YEAR ;
 int bcd2bin (int) ;
 int m48t86_readb (struct device*,int ) ;

__attribute__((used)) static int m48t86_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char reg;

 reg = m48t86_readb(dev, M48T86_B);

 if (reg & M48T86_B_DM) {

  tm->tm_sec = m48t86_readb(dev, M48T86_SEC);
  tm->tm_min = m48t86_readb(dev, M48T86_MIN);
  tm->tm_hour = m48t86_readb(dev, M48T86_HOUR) & 0x3f;
  tm->tm_mday = m48t86_readb(dev, M48T86_DOM);

  tm->tm_mon = m48t86_readb(dev, M48T86_MONTH) - 1;
  tm->tm_year = m48t86_readb(dev, M48T86_YEAR) + 100;
  tm->tm_wday = m48t86_readb(dev, M48T86_DOW);
 } else {

  tm->tm_sec = bcd2bin(m48t86_readb(dev, M48T86_SEC));
  tm->tm_min = bcd2bin(m48t86_readb(dev, M48T86_MIN));
  tm->tm_hour = bcd2bin(m48t86_readb(dev, M48T86_HOUR) &
       0x3f);
  tm->tm_mday = bcd2bin(m48t86_readb(dev, M48T86_DOM));

  tm->tm_mon = bcd2bin(m48t86_readb(dev, M48T86_MONTH)) - 1;
  tm->tm_year = bcd2bin(m48t86_readb(dev, M48T86_YEAR)) + 100;
  tm->tm_wday = bcd2bin(m48t86_readb(dev, M48T86_DOW));
 }


 if (!(reg & M48T86_B_H24))
  if (m48t86_readb(dev, M48T86_HOUR) & 0x80)
   tm->tm_hour += 12;

 return 0;
}
