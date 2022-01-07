
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct cpcap_time {int tod1; int tod2; int day; } ;
struct cpcap_rtc {scalar_t__ vendor; int alarm_irq; scalar_t__ alarm_enabled; int update_irq; scalar_t__ update_enabled; int regmap; } ;


 int CPCAP_REG_DAY ;
 int CPCAP_REG_TOD1 ;
 int CPCAP_REG_TOD2 ;
 scalar_t__ CPCAP_VENDOR_ST ;
 int DAY_MASK ;
 int TOD1_MASK ;
 int TOD2_MASK ;
 struct cpcap_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc2cpcap_time (struct cpcap_time*,struct rtc_time*) ;

__attribute__((used)) static int cpcap_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct cpcap_rtc *rtc;
 struct cpcap_time cpcap_tm;
 int ret = 0;

 rtc = dev_get_drvdata(dev);

 rtc2cpcap_time(&cpcap_tm, tm);

 if (rtc->alarm_enabled)
  disable_irq(rtc->alarm_irq);
 if (rtc->update_enabled)
  disable_irq(rtc->update_irq);

 if (rtc->vendor == CPCAP_VENDOR_ST) {



  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TOD1,
       TOD1_MASK, cpcap_tm.tod1);
  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TOD2,
       TOD2_MASK, cpcap_tm.tod2);
  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_DAY,
       DAY_MASK, cpcap_tm.day);
 } else {







  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TOD1,
       TOD1_MASK, 0);
  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_DAY,
       DAY_MASK, cpcap_tm.day);
  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TOD2,
       TOD2_MASK, cpcap_tm.tod2);
  ret |= regmap_update_bits(rtc->regmap, CPCAP_REG_TOD1,
       TOD1_MASK, cpcap_tm.tod1);
 }

 if (rtc->update_enabled)
  enable_irq(rtc->update_irq);
 if (rtc->alarm_enabled)
  enable_irq(rtc->alarm_irq);

 return ret;
}
