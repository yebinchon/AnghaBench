
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_thermal_sensor {TYPE_2__* ops; void* temp_data; void* overflow; void* dcorrect; TYPE_1__* cdata; struct regmap* regmap; struct device* dev; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* alloc_regfields ) (struct st_thermal_sensor*) ;} ;
struct TYPE_3__ {struct reg_field* reg_fields; } ;


 size_t DATA ;
 size_t DCORRECT ;
 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 size_t OVERFLOW ;
 int dev_err (struct device*,char*) ;
 void* devm_regmap_field_alloc (struct device*,struct regmap*,struct reg_field const) ;
 int stub1 (struct st_thermal_sensor*) ;

__attribute__((used)) static int st_thermal_alloc_regfields(struct st_thermal_sensor *sensor)
{
 struct device *dev = sensor->dev;
 struct regmap *regmap = sensor->regmap;
 const struct reg_field *reg_fields = sensor->cdata->reg_fields;

 sensor->dcorrect = devm_regmap_field_alloc(dev, regmap,
         reg_fields[DCORRECT]);

 sensor->overflow = devm_regmap_field_alloc(dev, regmap,
         reg_fields[OVERFLOW]);

 sensor->temp_data = devm_regmap_field_alloc(dev, regmap,
          reg_fields[DATA]);

 if (IS_ERR(sensor->dcorrect) ||
     IS_ERR(sensor->overflow) ||
     IS_ERR(sensor->temp_data)) {
  dev_err(dev, "failed to allocate common regfields\n");
  return -EINVAL;
 }

 return sensor->ops->alloc_regfields(sensor);
}
