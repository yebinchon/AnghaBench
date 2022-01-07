
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {void* int_enable; void* int_thresh_hi; TYPE_1__* cdata; struct regmap* regmap; struct device* dev; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct reg_field* reg_fields; } ;


 int EINVAL ;
 size_t INT_ENABLE ;
 size_t INT_THRESH_HI ;
 scalar_t__ IS_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_regmap_field_alloc (struct device*,struct regmap*,struct reg_field const) ;

__attribute__((used)) static int st_mmap_alloc_regfields(struct st_thermal_sensor *sensor)
{
 struct device *dev = sensor->dev;
 struct regmap *regmap = sensor->regmap;
 const struct reg_field *reg_fields = sensor->cdata->reg_fields;

 sensor->int_thresh_hi = devm_regmap_field_alloc(dev, regmap,
      reg_fields[INT_THRESH_HI]);
 sensor->int_enable = devm_regmap_field_alloc(dev, regmap,
      reg_fields[INT_ENABLE]);

 if (IS_ERR(sensor->int_thresh_hi) || IS_ERR(sensor->int_enable)) {
  dev_err(dev, "failed to alloc mmap regfields\n");
  return -EINVAL;
 }

 return 0;
}
