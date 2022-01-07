
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadc_thermal_info {int dev; int channel; } ;


 int dev_err (int ,char*,int) ;
 int gadc_thermal_adc_to_temp (struct gadc_thermal_info*,int) ;
 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int gadc_thermal_get_temp(void *data, int *temp)
{
 struct gadc_thermal_info *gti = data;
 int val;
 int ret;

 ret = iio_read_channel_processed(gti->channel, &val);
 if (ret < 0) {
  dev_err(gti->dev, "IIO channel read failed %d\n", ret);
  return ret;
 }
 *temp = gadc_thermal_adc_to_temp(gti, val);

 return 0;
}
