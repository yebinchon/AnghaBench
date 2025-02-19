
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_desc {char* name; char* supply_name; int owner; scalar_t__ vsel_mask; int vsel_reg; int uV_step; int min_uV; int enable_mask; int enable_reg; scalar_t__ n_voltages; int type; int * ops; } ;
struct regulator_config {int dummy; } ;
struct fan53555_device_info {struct regulator_desc desc; int dev; scalar_t__ vsel_count; int vol_reg; int vsel_step; int vsel_min; } ;


 int PTR_ERR_OR_ZERO (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int VSEL_BUCK_EN ;
 struct regulator_dev* devm_regulator_register (int ,struct regulator_desc*,struct regulator_config*) ;
 int fan53555_regulator_ops ;

__attribute__((used)) static int fan53555_regulator_register(struct fan53555_device_info *di,
   struct regulator_config *config)
{
 struct regulator_desc *rdesc = &di->desc;
 struct regulator_dev *rdev;

 rdesc->name = "fan53555-reg";
 rdesc->supply_name = "vin";
 rdesc->ops = &fan53555_regulator_ops;
 rdesc->type = REGULATOR_VOLTAGE;
 rdesc->n_voltages = di->vsel_count;
 rdesc->enable_reg = di->vol_reg;
 rdesc->enable_mask = VSEL_BUCK_EN;
 rdesc->min_uV = di->vsel_min;
 rdesc->uV_step = di->vsel_step;
 rdesc->vsel_reg = di->vol_reg;
 rdesc->vsel_mask = di->vsel_count - 1;
 rdesc->owner = THIS_MODULE;

 rdev = devm_regulator_register(di->dev, &di->desc, config);
 return PTR_ERR_OR_ZERO(rdev);
}
