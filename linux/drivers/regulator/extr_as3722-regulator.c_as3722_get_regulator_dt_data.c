
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {struct device_node* of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct as3722_regulators {struct as3722_regulator_config_data* reg_config_data; } ;
struct as3722_regulator_config_data {int ext_control; int enable_tracking; int reg_init; } ;
struct TYPE_10__ {struct device_node* of_node; int init_data; } ;
struct TYPE_8__ {int of_node; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENODEV ;
 TYPE_3__* as3722_regulator_matches ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*,int) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_regulator_match (TYPE_2__*,struct device_node*,TYPE_3__*,int) ;

__attribute__((used)) static int as3722_get_regulator_dt_data(struct platform_device *pdev,
  struct as3722_regulators *as3722_regs)
{
 struct device_node *np;
 struct as3722_regulator_config_data *reg_config;
 u32 prop;
 int id;
 int ret;

 np = of_get_child_by_name(pdev->dev.parent->of_node, "regulators");
 if (!np) {
  dev_err(&pdev->dev, "Device is not having regulators node\n");
  return -ENODEV;
 }
 pdev->dev.of_node = np;

 ret = of_regulator_match(&pdev->dev, np, as3722_regulator_matches,
   ARRAY_SIZE(as3722_regulator_matches));
 of_node_put(np);
 if (ret < 0) {
  dev_err(&pdev->dev, "Parsing of regulator node failed: %d\n",
   ret);
  return ret;
 }

 for (id = 0; id < ARRAY_SIZE(as3722_regulator_matches); ++id) {
  struct device_node *reg_node;

  reg_config = &as3722_regs->reg_config_data[id];
  reg_config->reg_init = as3722_regulator_matches[id].init_data;
  reg_node = as3722_regulator_matches[id].of_node;

  if (!reg_config->reg_init || !reg_node)
   continue;

  ret = of_property_read_u32(reg_node, "ams,ext-control", &prop);
  if (!ret) {
   if (prop < 3)
    reg_config->ext_control = prop;
   else
    dev_warn(&pdev->dev,
     "ext-control have invalid option: %u\n",
     prop);
  }
  reg_config->enable_tracking =
   of_property_read_bool(reg_node, "ams,enable-tracking");
 }
 return 0;
}
