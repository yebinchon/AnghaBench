
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxreg_hotplug_priv_data {int dev; int regmap; } ;
struct mlxreg_core_item {int count; int cache; struct mlxreg_core_data* data; } ;
struct mlxreg_core_data {int attached; int mask; scalar_t__ reg; scalar_t__ health_cntr; } ;


 scalar_t__ MLXREG_HOTPLUG_EVENT_OFF ;
 int MLXREG_HOTPLUG_GOOD_HEALTH_MASK ;
 scalar_t__ MLXREG_HOTPLUG_MASK_OFF ;
 int dev_err (int ,char*) ;
 int mlxreg_hotplug_device_create (struct mlxreg_hotplug_priv_data*,struct mlxreg_core_data*) ;
 int mlxreg_hotplug_device_destroy (struct mlxreg_hotplug_priv_data*,struct mlxreg_core_data*) ;
 int regmap_read (int ,scalar_t__,int *) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void
mlxreg_hotplug_health_work_helper(struct mlxreg_hotplug_priv_data *priv,
      struct mlxreg_core_item *item)
{
 struct mlxreg_core_data *data = item->data;
 u32 regval;
 int i, ret = 0;

 for (i = 0; i < item->count; i++, data++) {

  ret = regmap_write(priv->regmap, data->reg +
       MLXREG_HOTPLUG_MASK_OFF, 0);
  if (ret)
   goto out;


  ret = regmap_read(priv->regmap, data->reg, &regval);
  if (ret)
   goto out;

  regval &= data->mask;

  if (item->cache == regval)
   goto ack_event;
  if (regval == MLXREG_HOTPLUG_GOOD_HEALTH_MASK) {
   if (!data->attached) {




    mlxreg_hotplug_device_create(priv, data);
    data->attached = 1;
   }
  } else {
   if (data->attached) {





    mlxreg_hotplug_device_destroy(priv, data);
    data->attached = 0;
    data->health_cntr = 0;
   }
  }
  item->cache = regval;
ack_event:

  ret = regmap_write(priv->regmap, data->reg +
       MLXREG_HOTPLUG_EVENT_OFF, 0);
  if (ret)
   goto out;


  ret = regmap_write(priv->regmap, data->reg +
       MLXREG_HOTPLUG_MASK_OFF, data->mask);
  if (ret)
   goto out;
 }

 out:
 if (ret)
  dev_err(priv->dev, "Failed to complete workqueue.\n");
}
