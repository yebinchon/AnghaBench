
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ SNVS_LPCR ;
 int SNVS_LPCR_LPTA_EN ;
 scalar_t__ SNVS_LPSR ;
 unsigned long SNVS_LPSR_LPTA ;
 scalar_t__ SNVS_LPTAR ;
 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int regmap_write (int ,scalar_t__,unsigned long) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 int rtc_write_sync_lp (struct snvs_rtc_data*) ;
 int snvs_rtc_alarm_irq_enable (struct device*,int ) ;

__attribute__((used)) static int snvs_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct snvs_rtc_data *data = dev_get_drvdata(dev);
 unsigned long time = rtc_tm_to_time64(&alrm->time);
 int ret;

 regmap_update_bits(data->regmap, data->offset + SNVS_LPCR, SNVS_LPCR_LPTA_EN, 0);
 ret = rtc_write_sync_lp(data);
 if (ret)
  return ret;
 regmap_write(data->regmap, data->offset + SNVS_LPTAR, time);


 regmap_write(data->regmap, data->offset + SNVS_LPSR, SNVS_LPSR_LPTA);

 return snvs_rtc_alarm_irq_enable(dev, alrm->enabled);
}
