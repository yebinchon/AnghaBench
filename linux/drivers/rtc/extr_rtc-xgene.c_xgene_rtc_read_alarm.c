
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_CCR ;
 int RTC_CCR_IE ;
 struct xgene_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int ,int *) ;

__attribute__((used)) static int xgene_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);


 rtc_time64_to_tm(0, &alrm->time);
 alrm->enabled = readl(pdata->csr_base + RTC_CCR) & RTC_CCR_IE;

 return 0;
}
