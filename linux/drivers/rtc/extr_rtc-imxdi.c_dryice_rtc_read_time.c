
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct imxdi_dev {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 scalar_t__ DTCMR ;
 struct imxdi_dev* dev_get_drvdata (struct device*) ;
 unsigned long readl (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int dryice_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct imxdi_dev *imxdi = dev_get_drvdata(dev);
 unsigned long now;

 now = readl(imxdi->ioaddr + DTCMR);
 rtc_time64_to_tm(now, tm);

 return 0;
}
