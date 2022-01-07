
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {TYPE_1__* cdata; int dcorrect; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int calibration_val; } ;


 int dev_err (struct device*,char*) ;
 int regmap_field_read (int ,unsigned int*) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int st_thermal_calibration(struct st_thermal_sensor *sensor)
{
 int ret;
 unsigned int val;
 struct device *dev = sensor->dev;


 ret = regmap_field_read(sensor->dcorrect, &val);
 if (ret) {
  dev_err(dev, "failed to read calibration data\n");
  return ret;
 }

 if (!val) {




  ret = regmap_field_write(sensor->dcorrect,
      sensor->cdata->calibration_val);
  if (ret)
   dev_err(dev, "failed to set calibration data\n");
 }

 return ret;
}
