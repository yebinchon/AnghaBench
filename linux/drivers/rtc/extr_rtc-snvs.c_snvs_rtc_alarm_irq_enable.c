
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;
struct device {int dummy; } ;


 scalar_t__ SNVS_LPCR ;
 int SNVS_LPCR_LPTA_EN ;
 int SNVS_LPCR_LPWUI_EN ;
 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int rtc_write_sync_lp (struct snvs_rtc_data*) ;

__attribute__((used)) static int snvs_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 struct snvs_rtc_data *data = dev_get_drvdata(dev);

 regmap_update_bits(data->regmap, data->offset + SNVS_LPCR,
      (SNVS_LPCR_LPTA_EN | SNVS_LPCR_LPWUI_EN),
      enable ? (SNVS_LPCR_LPTA_EN | SNVS_LPCR_LPWUI_EN) : 0);

 return rtc_write_sync_lp(data);
}
