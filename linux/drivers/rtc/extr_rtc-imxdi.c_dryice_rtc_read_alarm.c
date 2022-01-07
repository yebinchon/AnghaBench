
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct imxdi_dev {int write_mutex; scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 scalar_t__ DCAMR ;
 scalar_t__ DIER ;
 int DIER_CAIE ;
 scalar_t__ DSR ;
 int DSR_CAF ;
 struct imxdi_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int,int *) ;

__attribute__((used)) static int dryice_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct imxdi_dev *imxdi = dev_get_drvdata(dev);
 u32 dcamr;

 dcamr = readl(imxdi->ioaddr + DCAMR);
 rtc_time64_to_tm(dcamr, &alarm->time);


 alarm->enabled = (readl(imxdi->ioaddr + DIER) & DIER_CAIE) != 0;


 mutex_lock(&imxdi->write_mutex);


 alarm->pending = (readl(imxdi->ioaddr + DSR) & DSR_CAF) != 0;

 mutex_unlock(&imxdi->write_mutex);

 return 0;
}
