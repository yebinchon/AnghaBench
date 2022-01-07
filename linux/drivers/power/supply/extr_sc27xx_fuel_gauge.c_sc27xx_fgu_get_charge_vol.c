
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int charge_chan; } ;


 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_charge_vol(struct sc27xx_fgu_data *data, int *val)
{
 int ret, vol;

 ret = iio_read_channel_processed(data->charge_chan, &vol);
 if (ret < 0)
  return ret;

 *val = vol * 1000;
 return 0;
}
