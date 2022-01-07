
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_hotplug_priv_data {int regmap; TYPE_1__* pdev; } ;
struct mlxreg_core_item {scalar_t__ inversed; scalar_t__ health; struct mlxreg_core_data* data; } ;
struct mlxreg_core_hotplug_platform_data {struct mlxreg_core_item* items; } ;
struct mlxreg_core_data {int mask; int reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; int nr; } ;
struct TYPE_3__ {int dev; } ;


 struct mlxreg_hotplug_priv_data* dev_get_drvdata (struct device*) ;
 struct mlxreg_core_hotplug_platform_data* dev_get_platdata (int *) ;
 int regmap_read (int ,int ,int*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t mlxreg_hotplug_attr_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct mlxreg_hotplug_priv_data *priv = dev_get_drvdata(dev);
 struct mlxreg_core_hotplug_platform_data *pdata;
 int index = to_sensor_dev_attr_2(attr)->index;
 int nr = to_sensor_dev_attr_2(attr)->nr;
 struct mlxreg_core_item *item;
 struct mlxreg_core_data *data;
 u32 regval;
 int ret;

 pdata = dev_get_platdata(&priv->pdev->dev);
 item = pdata->items + nr;
 data = item->data + index;

 ret = regmap_read(priv->regmap, data->reg, &regval);
 if (ret)
  return ret;

 if (item->health) {
  regval &= data->mask;
 } else {

  if (item->inversed)
   regval = !(regval & data->mask);
  else
   regval = !!(regval & data->mask);
 }

 return sprintf(buf, "%u\n", regval);
}
