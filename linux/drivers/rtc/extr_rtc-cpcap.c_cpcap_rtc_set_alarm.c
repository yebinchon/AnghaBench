
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; } ;
struct device {int dummy; } ;
struct cpcap_time {int tod1; int tod2; int day; } ;
struct cpcap_rtc {int alarm_enabled; int alarm_irq; int regmap; } ;


 int CPCAP_REG_DAYA ;
 int CPCAP_REG_TODA1 ;
 int CPCAP_REG_TODA2 ;
 int DAY_MASK ;
 int TOD1_MASK ;
 int TOD2_MASK ;
 struct cpcap_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc2cpcap_time (struct cpcap_time*,int *) ;

__attribute__((used)) static int cpcap_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct cpcap_rtc *rtc;
 struct cpcap_time cpcap_tm;
 int ret;

 rtc = dev_get_drvdata(dev);

 rtc2cpcap_time(&cpcap_tm, &alrm->time);

 if (rtc->alarm_enabled)
  disable_irq(rtc->alarm_irq);

 ret = regmap_update_bits(rtc->regmap, CPCAP_REG_DAYA, DAY_MASK,
     cpcap_tm.day);
 ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TODA2, TOD2_MASK,
      cpcap_tm.tod2);
 ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TODA1, TOD1_MASK,
      cpcap_tm.tod1);

 if (!ret) {
  enable_irq(rtc->alarm_irq);
  rtc->alarm_enabled = 1;
 }

 return ret;
}
