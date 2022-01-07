
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_CLR ;
 struct xgene_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xgene_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);





 writel((u32)rtc_tm_to_time64(tm), pdata->csr_base + RTC_CLR);
 readl(pdata->csr_base + RTC_CLR);

 return 0;
}
