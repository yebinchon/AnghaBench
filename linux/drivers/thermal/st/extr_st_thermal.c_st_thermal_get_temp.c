
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct st_thermal_sensor* devdata; } ;
struct st_thermal_sensor {TYPE_1__* cdata; int temp_data; int overflow; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ temp_adjust_val; } ;


 int EIO ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 unsigned int mcelsius (unsigned int) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int st_thermal_get_temp(struct thermal_zone_device *th, int *temperature)
{
 struct st_thermal_sensor *sensor = th->devdata;
 struct device *dev = sensor->dev;
 unsigned int temp;
 unsigned int overflow;
 int ret;

 ret = regmap_field_read(sensor->overflow, &overflow);
 if (ret)
  return ret;
 if (overflow)
  return -EIO;

 ret = regmap_field_read(sensor->temp_data, &temp);
 if (ret)
  return ret;

 temp += sensor->cdata->temp_adjust_val;
 temp = mcelsius(temp);

 dev_dbg(dev, "temperature: %d\n", temp);

 *temperature = temp;

 return 0;
}
