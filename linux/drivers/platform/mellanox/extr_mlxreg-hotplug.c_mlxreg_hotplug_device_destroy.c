
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxreg_hotplug_priv_data {TYPE_1__* hwmon; } ;
struct TYPE_4__ {int * adapter; int * client; } ;
struct mlxreg_core_data {TYPE_2__ hpdev; } ;
struct TYPE_3__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int i2c_put_adapter (int *) ;
 int i2c_unregister_device (int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static void
mlxreg_hotplug_device_destroy(struct mlxreg_hotplug_priv_data *priv,
         struct mlxreg_core_data *data)
{

 kobject_uevent(&priv->hwmon->kobj, KOBJ_CHANGE);

 if (data->hpdev.client) {
  i2c_unregister_device(data->hpdev.client);
  data->hpdev.client = ((void*)0);
 }

 if (data->hpdev.adapter) {
  i2c_put_adapter(data->hpdev.adapter);
  data->hpdev.adapter = ((void*)0);
 }
}
