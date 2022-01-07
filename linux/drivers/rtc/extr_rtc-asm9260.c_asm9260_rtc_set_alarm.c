
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_sec; int tm_min; int tm_hour; int tm_yday; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct asm9260_rtc_priv {scalar_t__ iobase; } ;


 int BM_AMR_OFF ;
 scalar_t__ HW_ALDOM ;
 scalar_t__ HW_ALDOW ;
 scalar_t__ HW_ALDOY ;
 scalar_t__ HW_ALHOUR ;
 scalar_t__ HW_ALMIN ;
 scalar_t__ HW_ALMON ;
 scalar_t__ HW_ALSEC ;
 scalar_t__ HW_ALYEAR ;
 scalar_t__ HW_AMR ;
 struct asm9260_rtc_priv* dev_get_drvdata (struct device*) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int asm9260_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct asm9260_rtc_priv *priv = dev_get_drvdata(dev);

 iowrite32(alrm->time.tm_year, priv->iobase + HW_ALYEAR);
 iowrite32(alrm->time.tm_mon, priv->iobase + HW_ALMON);
 iowrite32(alrm->time.tm_mday, priv->iobase + HW_ALDOM);
 iowrite32(alrm->time.tm_wday, priv->iobase + HW_ALDOW);
 iowrite32(alrm->time.tm_yday, priv->iobase + HW_ALDOY);
 iowrite32(alrm->time.tm_hour, priv->iobase + HW_ALHOUR);
 iowrite32(alrm->time.tm_min, priv->iobase + HW_ALMIN);
 iowrite32(alrm->time.tm_sec, priv->iobase + HW_ALSEC);

 iowrite32(alrm->enabled ? 0 : BM_AMR_OFF, priv->iobase + HW_AMR);

 return 0;
}
