
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxreg_hotplug_priv_data {int regmap; int dwork_irq; int irq; TYPE_1__* pdev; } ;
struct mlxreg_core_item {int count; struct mlxreg_core_data* data; } ;
struct mlxreg_core_hotplug_platform_data {int counter; scalar_t__ cell; scalar_t__ cell_low; struct mlxreg_core_item* items; } ;
struct mlxreg_core_data {scalar_t__ reg; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MLXREG_HOTPLUG_AGGR_MASK_OFF ;
 scalar_t__ MLXREG_HOTPLUG_EVENT_OFF ;
 scalar_t__ MLXREG_HOTPLUG_MASK_OFF ;
 int cancel_delayed_work_sync (int *) ;
 struct mlxreg_core_hotplug_platform_data* dev_get_platdata (int *) ;
 int disable_irq (int ) ;
 int mlxreg_hotplug_device_destroy (struct mlxreg_hotplug_priv_data*,struct mlxreg_core_data*) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void mlxreg_hotplug_unset_irq(struct mlxreg_hotplug_priv_data *priv)
{
 struct mlxreg_core_hotplug_platform_data *pdata;
 struct mlxreg_core_item *item;
 struct mlxreg_core_data *data;
 int count, i, j;

 pdata = dev_get_platdata(&priv->pdev->dev);
 item = pdata->items;
 disable_irq(priv->irq);
 cancel_delayed_work_sync(&priv->dwork_irq);


 if (pdata->cell_low)
  regmap_write(priv->regmap, pdata->cell_low +
        MLXREG_HOTPLUG_AGGR_MASK_OFF, 0);


 regmap_write(priv->regmap, pdata->cell + MLXREG_HOTPLUG_AGGR_MASK_OFF,
       0);


 for (i = 0; i < pdata->counter; i++, item++) {
  data = item->data;

  regmap_write(priv->regmap, data->reg + MLXREG_HOTPLUG_MASK_OFF,
        0);

  regmap_write(priv->regmap, data->reg +
        MLXREG_HOTPLUG_EVENT_OFF, 0);


  count = item->count;
  for (j = 0; j < count; j++, data++)
   mlxreg_hotplug_device_destroy(priv, data);
 }
}
