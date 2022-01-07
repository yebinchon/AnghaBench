
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int pwr; TYPE_1__* cdata; int regmap; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * reg_fields; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t TEMP_PWR ;
 int dev_err (struct device*,char*) ;
 int devm_regmap_field_alloc (struct device*,int ,int ) ;

__attribute__((used)) static int st_syscfg_alloc_regfields(struct st_thermal_sensor *sensor)
{
 struct device *dev = sensor->dev;

 sensor->pwr = devm_regmap_field_alloc(dev, sensor->regmap,
     sensor->cdata->reg_fields[TEMP_PWR]);

 if (IS_ERR(sensor->pwr)) {
  dev_err(dev, "failed to alloc syscfg regfields\n");
  return PTR_ERR(sensor->pwr);
 }

 return 0;
}
