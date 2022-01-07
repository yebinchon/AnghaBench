
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int RTC_RTSR ;
 int RTC_RTSR_HZE ;
 int dev_info (struct device*,char*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void puv3_rtc_enable(struct device *dev, int en)
{
 if (!en) {
  writel(readl(RTC_RTSR) & ~RTC_RTSR_HZE, RTC_RTSR);
 } else {

  if ((readl(RTC_RTSR) & RTC_RTSR_HZE) == 0) {
   dev_info(dev, "rtc disabled, re-enabling\n");
   writel(readl(RTC_RTSR) | RTC_RTSR_HZE, RTC_RTSR);
  }
 }
}
