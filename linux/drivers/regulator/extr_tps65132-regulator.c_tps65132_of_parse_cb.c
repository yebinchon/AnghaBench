
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65132_regulator {int dev; struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int act_dis_time_us; void* act_dis_gpiod; void* en_gpiod; } ;
struct regulator_desc {size_t id; } ;
struct regulator_config {struct tps65132_regulator* driver_data; } ;
struct device_node {int fwnode; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,int) ;
 void* devm_fwnode_get_index_gpiod_from_child (int ,char*,int ,int *,int ,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int tps65132_of_parse_cb(struct device_node *np,
    const struct regulator_desc *desc,
    struct regulator_config *config)
{
 struct tps65132_regulator *tps = config->driver_data;
 struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[desc->id];
 int ret;

 rpdata->en_gpiod = devm_fwnode_get_index_gpiod_from_child(tps->dev,
     "enable", 0, &np->fwnode, 0, "enable");
 if (IS_ERR_OR_NULL(rpdata->en_gpiod)) {
  ret = PTR_ERR(rpdata->en_gpiod);


  if (ret == -EPROBE_DEFER)
   return ret;
  return 0;
 }

 rpdata->act_dis_gpiod = devm_fwnode_get_index_gpiod_from_child(
     tps->dev, "active-discharge", 0,
     &np->fwnode, 0, "active-discharge");
 if (IS_ERR_OR_NULL(rpdata->act_dis_gpiod)) {
  ret = PTR_ERR(rpdata->act_dis_gpiod);


  if (ret == -EPROBE_DEFER)
   return ret;

  return 0;
 }

 ret = of_property_read_u32(np, "ti,active-discharge-time-us",
       &rpdata->act_dis_time_us);
 if (ret < 0) {
  dev_err(tps->dev, "Failed to read active discharge time:%d\n",
   ret);
  return ret;
 }

 return 0;
}
