
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtd119x_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTD_RTCCR ;
 int RTD_RTCCR_RTCRST ;
 struct rtd119x_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void rtd119x_rtc_reset(struct device *dev)
{
 struct rtd119x_rtc *data = dev_get_drvdata(dev);
 u32 val;

 val = readl_relaxed(data->base + RTD_RTCCR);
 val |= RTD_RTCCR_RTCRST;
 writel_relaxed(val, data->base + RTD_RTCCR);

 val &= ~RTD_RTCCR_RTCRST;
 writel(val, data->base + RTD_RTCCR);
}
