
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_fg_info {int * iio_channel; } ;


 size_t BAT_CHRG_CURR ;
 size_t BAT_D_CURR ;
 int iio_read_channel_raw (int ,int*) ;

__attribute__((used)) static int fuel_gauge_get_current(struct axp288_fg_info *info, int *cur)
{
 int ret, discharge;


 ret = iio_read_channel_raw(info->iio_channel[BAT_D_CURR], &discharge);
 if (ret < 0)
  return ret;

 if (discharge > 0) {
  *cur = -1 * discharge;
  return 0;
 }

 return iio_read_channel_raw(info->iio_channel[BAT_CHRG_CURR], cur);
}
