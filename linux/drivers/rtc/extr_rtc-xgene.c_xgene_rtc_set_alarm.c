
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_CMR ;
 struct xgene_rtc_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ rtc_tm_to_time64 (int *) ;
 int writel (int ,scalar_t__) ;
 int xgene_rtc_alarm_irq_enable (struct device*,int ) ;

__attribute__((used)) static int xgene_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);

 writel((u32)rtc_tm_to_time64(&alrm->time), pdata->csr_base + RTC_CMR);

 xgene_rtc_alarm_irq_enable(dev, alrm->enabled);

 return 0;
}
