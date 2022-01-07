
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlxreg_hotplug_priv_data {int dev; TYPE_2__* pdev; TYPE_1__* hwmon; } ;
struct mlxreg_core_hotplug_platform_data {scalar_t__ shift_nr; } ;
struct TYPE_7__ {scalar_t__ nr; int * adapter; TYPE_4__* brdinfo; int client; } ;
struct mlxreg_core_data {TYPE_3__ hpdev; } ;
struct TYPE_8__ {int addr; int type; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int kobj; } ;


 int EFAULT ;
 int KOBJ_CHANGE ;
 int dev_err (int ,char*,scalar_t__,...) ;
 struct mlxreg_core_hotplug_platform_data* dev_get_platdata (int *) ;
 int * i2c_get_adapter (scalar_t__) ;
 int i2c_new_device (int *,TYPE_4__*) ;
 int i2c_put_adapter (int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static int mlxreg_hotplug_device_create(struct mlxreg_hotplug_priv_data *priv,
     struct mlxreg_core_data *data)
{
 struct mlxreg_core_hotplug_platform_data *pdata;


 kobject_uevent(&priv->hwmon->kobj, KOBJ_CHANGE);





 if (data->hpdev.nr < 0)
  return 0;

 pdata = dev_get_platdata(&priv->pdev->dev);
 data->hpdev.adapter = i2c_get_adapter(data->hpdev.nr +
           pdata->shift_nr);
 if (!data->hpdev.adapter) {
  dev_err(priv->dev, "Failed to get adapter for bus %d\n",
   data->hpdev.nr + pdata->shift_nr);
  return -EFAULT;
 }

 data->hpdev.client = i2c_new_device(data->hpdev.adapter,
         data->hpdev.brdinfo);
 if (!data->hpdev.client) {
  dev_err(priv->dev, "Failed to create client %s at bus %d at addr 0x%02x\n",
   data->hpdev.brdinfo->type, data->hpdev.nr +
   pdata->shift_nr, data->hpdev.brdinfo->addr);

  i2c_put_adapter(data->hpdev.adapter);
  data->hpdev.adapter = ((void*)0);
  return -EFAULT;
 }

 return 0;
}
