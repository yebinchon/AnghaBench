
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct thermal_zone_device {int device; struct imx_thermal_data* devdata; } ;
struct thermal_soc_data {unsigned int temp_valid_mask; unsigned int temp_value_mask; unsigned int temp_value_shift; scalar_t__ version; int power_down_mask; scalar_t__ sensor_ctrl; int measure_temp_mask; int temp_data; } ;
struct regmap {int dummy; } ;
struct imx_thermal_data {scalar_t__ mode; unsigned int c1; unsigned int c2; int alarm_temp; int temp_passive; int temp_critical; int last_temp; int irq_enabled; int irq; struct thermal_soc_data* socdata; struct regmap* tempmon; } ;


 int EAGAIN ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 scalar_t__ TEMPMON_IMX6Q ;
 scalar_t__ TEMPMON_IMX7D ;
 scalar_t__ THERMAL_DEVICE_ENABLED ;
 int dev_dbg (int *,char*,...) ;
 int enable_irq (int ) ;
 int imx_set_alarm_temp (struct imx_thermal_data*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,scalar_t__,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
{
 struct imx_thermal_data *data = tz->devdata;
 const struct thermal_soc_data *soc_data = data->socdata;
 struct regmap *map = data->tempmon;
 unsigned int n_meas;
 bool wait;
 u32 val;

 if (data->mode == THERMAL_DEVICE_ENABLED) {

  regmap_read(map, soc_data->temp_data, &val);
  wait = !(val & soc_data->temp_valid_mask);
 } else {





  regmap_write(map, soc_data->sensor_ctrl + REG_CLR,
       soc_data->power_down_mask);
  regmap_write(map, soc_data->sensor_ctrl + REG_SET,
       soc_data->measure_temp_mask);

  wait = 1;
 }





 if (wait)
  usleep_range(20, 50);

 regmap_read(map, soc_data->temp_data, &val);

 if (data->mode != THERMAL_DEVICE_ENABLED) {
  regmap_write(map, soc_data->sensor_ctrl + REG_CLR,
        soc_data->measure_temp_mask);
  regmap_write(map, soc_data->sensor_ctrl + REG_SET,
        soc_data->power_down_mask);
 }

 if ((val & soc_data->temp_valid_mask) == 0) {
  dev_dbg(&tz->device, "temp measurement never finished\n");
  return -EAGAIN;
 }

 n_meas = (val & soc_data->temp_value_mask)
  >> soc_data->temp_value_shift;


 if (data->socdata->version == TEMPMON_IMX7D)
  *temp = (n_meas - data->c1 + 25) * 1000;
 else
  *temp = data->c2 - n_meas * data->c1;


 if (data->socdata->version == TEMPMON_IMX6Q) {
  if (data->alarm_temp == data->temp_passive &&
   *temp >= data->temp_passive)
   imx_set_alarm_temp(data, data->temp_critical);
  if (data->alarm_temp == data->temp_critical &&
   *temp < data->temp_passive) {
   imx_set_alarm_temp(data, data->temp_passive);
   dev_dbg(&tz->device, "thermal alarm off: T < %d\n",
    data->alarm_temp / 1000);
  }
 }

 if (*temp != data->last_temp) {
  dev_dbg(&tz->device, "millicelsius: %d\n", *temp);
  data->last_temp = *temp;
 }


 if (!data->irq_enabled && *temp < data->alarm_temp) {
  data->irq_enabled = 1;
  enable_irq(data->irq);
 }

 return 0;
}
