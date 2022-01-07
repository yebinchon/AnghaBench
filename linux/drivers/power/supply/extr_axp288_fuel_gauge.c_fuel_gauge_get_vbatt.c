
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_fg_info {int * iio_channel; } ;


 size_t BAT_VOLT ;
 int VOLTAGE_FROM_ADC (int) ;
 int iio_read_channel_raw (int ,int*) ;

__attribute__((used)) static int fuel_gauge_get_vbatt(struct axp288_fg_info *info, int *vbatt)
{
 int ret = 0, raw_val;

 ret = iio_read_channel_raw(info->iio_channel[BAT_VOLT], &raw_val);
 if (ret < 0)
  goto vbatt_read_fail;

 *vbatt = VOLTAGE_FROM_ADC(raw_val);
vbatt_read_fail:
 return ret;
}
