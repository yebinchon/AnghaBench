
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rtc_dev {scalar_t__ csr_base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_CCVR ;
 struct xgene_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int xgene_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct xgene_rtc_dev *pdata = dev_get_drvdata(dev);

 rtc_time64_to_tm(readl(pdata->csr_base + RTC_CCVR), tm);
 return 0;
}
