
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_consumer_supply {int dummy; } ;
struct TYPE_8__ {int release; TYPE_3__* platform_data; } ;
struct platform_device {char* name; int id; TYPE_4__ dev; } ;
struct TYPE_7__ {int microvolts; int enabled_at_boot; TYPE_2__* init_data; int supply_name; } ;
struct TYPE_5__ {int always_on; } ;
struct TYPE_6__ {int num_consumer_supplies; struct regulator_consumer_supply* consumer_supplies; TYPE_1__ constraints; } ;
struct fixed_regulator_data {struct platform_device pdev; TYPE_3__ cfg; TYPE_2__ init_data; } ;


 int GFP_KERNEL ;
 int kfree (struct fixed_regulator_data*) ;
 int kstrdup (char const*,int ) ;
 struct fixed_regulator_data* kzalloc (int,int ) ;
 int platform_device_register (struct platform_device*) ;
 int regulator_fixed_release ;

struct platform_device *regulator_register_always_on(int id, const char *name,
 struct regulator_consumer_supply *supplies, int num_supplies, int uv)
{
 struct fixed_regulator_data *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ((void*)0);

 data->cfg.supply_name = kstrdup(name, GFP_KERNEL);
 if (!data->cfg.supply_name) {
  kfree(data);
  return ((void*)0);
 }

 data->cfg.microvolts = uv;
 data->cfg.enabled_at_boot = 1;
 data->cfg.init_data = &data->init_data;

 data->init_data.constraints.always_on = 1;
 data->init_data.consumer_supplies = supplies;
 data->init_data.num_consumer_supplies = num_supplies;

 data->pdev.name = "reg-fixed-voltage";
 data->pdev.id = id;
 data->pdev.dev.platform_data = &data->cfg;
 data->pdev.dev.release = regulator_fixed_release;

 platform_device_register(&data->pdev);

 return &data->pdev;
}
