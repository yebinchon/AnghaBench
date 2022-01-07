
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps62360_regulator_platform_data {int vsel0_def_state; int vsel1_def_state; int en_internal_pulldn; int en_discharge; void* vsel1_gpio; void* vsel0_gpio; int reg_init_data; } ;
struct regulator_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct tps62360_regulator_platform_data* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 void* of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_get_regulator_init_data (struct device*,struct device_node*,struct regulator_desc const*) ;

__attribute__((used)) static struct tps62360_regulator_platform_data *
 of_get_tps62360_platform_data(struct device *dev,
          const struct regulator_desc *desc)
{
 struct tps62360_regulator_platform_data *pdata;
 struct device_node *np = dev->of_node;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 pdata->reg_init_data = of_get_regulator_init_data(dev, dev->of_node,
         desc);
 if (!pdata->reg_init_data) {
  dev_err(dev, "Not able to get OF regulator init data\n");
  return ((void*)0);
 }

 pdata->vsel0_gpio = of_get_named_gpio(np, "vsel0-gpio", 0);
 pdata->vsel1_gpio = of_get_named_gpio(np, "vsel1-gpio", 0);

 if (of_find_property(np, "ti,vsel0-state-high", ((void*)0)))
  pdata->vsel0_def_state = 1;

 if (of_find_property(np, "ti,vsel1-state-high", ((void*)0)))
  pdata->vsel1_def_state = 1;

 if (of_find_property(np, "ti,enable-pull-down", ((void*)0)))
  pdata->en_internal_pulldn = 1;

 if (of_find_property(np, "ti,enable-vout-discharge", ((void*)0)))
  pdata->en_discharge = 1;

 return pdata;
}
