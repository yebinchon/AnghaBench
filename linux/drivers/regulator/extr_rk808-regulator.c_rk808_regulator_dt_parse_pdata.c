
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk808_regulator_data {int * dvs_gpio; } ;
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int ARRAY_SIZE (int *) ;
 int ENXIO ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RK808_DVS1_POL ;
 int RK808_DVS2_POL ;
 int RK808_IO_POL_REG ;
 int dev_err (struct device*,char*,int,int) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_gpiod_get_index_optional (struct device*,char*,int,int ) ;
 scalar_t__ gpiod_is_active_low (int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int rk808_regulator_dt_parse_pdata(struct device *dev,
       struct device *client_dev,
       struct regmap *map,
       struct rk808_regulator_data *pdata)
{
 struct device_node *np;
 int tmp, ret = 0, i;

 np = of_get_child_by_name(client_dev->of_node, "regulators");
 if (!np)
  return -ENXIO;

 for (i = 0; i < ARRAY_SIZE(pdata->dvs_gpio); i++) {
  pdata->dvs_gpio[i] =
   devm_gpiod_get_index_optional(client_dev, "dvs", i,
            GPIOD_OUT_LOW);
  if (IS_ERR(pdata->dvs_gpio[i])) {
   ret = PTR_ERR(pdata->dvs_gpio[i]);
   dev_err(dev, "failed to get dvs%d gpio (%d)\n", i, ret);
   goto dt_parse_end;
  }

  if (!pdata->dvs_gpio[i]) {
   dev_warn(dev, "there is no dvs%d gpio\n", i);
   continue;
  }

  tmp = i ? RK808_DVS2_POL : RK808_DVS1_POL;
  ret = regmap_update_bits(map, RK808_IO_POL_REG, tmp,
    gpiod_is_active_low(pdata->dvs_gpio[i]) ?
    0 : tmp);
 }

dt_parse_end:
 of_node_put(np);
 return ret;
}
