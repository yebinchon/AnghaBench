
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct armada38x_rtc {int dummy; } ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int RTC_CCR ;
 unsigned long RTC_CCR_MODE ;
 long armada38x_ppb_convert (long) ;
 long clamp (long,long,long) ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_delayed_write (unsigned long,struct armada38x_rtc*,int ) ;

__attribute__((used)) static int armada38x_rtc_set_offset(struct device *dev, long offset)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 unsigned long ccr = 0;
 long ppb_cor, off;







 offset = clamp(offset, -484270L, 488558L);

 ppb_cor = armada38x_ppb_convert(offset);





 off = DIV_ROUND_CLOSEST(ppb_cor, 954);
 if (off > 127 || off < -128) {
  ccr = RTC_CCR_MODE;
  off = DIV_ROUND_CLOSEST(ppb_cor, 3815);
 }





 ccr |= (off & 0x3fff) ^ 0x2000;
 rtc_delayed_write(ccr, rtc, RTC_CCR);

 return 0;
}
