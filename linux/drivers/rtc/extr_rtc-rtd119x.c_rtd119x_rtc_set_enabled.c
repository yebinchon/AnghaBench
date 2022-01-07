
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtd119x_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTD_RTCEN ;
 int RTD_RTCEN_RTCEN_MASK ;
 struct rtd119x_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void rtd119x_rtc_set_enabled(struct device *dev, bool enable)
{
 struct rtd119x_rtc *data = dev_get_drvdata(dev);
 u32 val;

 val = readl_relaxed(data->base + RTD_RTCEN);
 if (enable) {
  if ((val & RTD_RTCEN_RTCEN_MASK) == 0x5a)
   return;
  writel_relaxed(0x5a, data->base + RTD_RTCEN);
 } else {
  writel_relaxed(0, data->base + RTD_RTCEN);
 }
}
