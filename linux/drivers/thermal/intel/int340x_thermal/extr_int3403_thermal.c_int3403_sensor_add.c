
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct int3403_sensor {int int340x_zone; } ;
struct int3403_priv {TYPE_2__* adev; struct int3403_sensor* priv; TYPE_1__* pdev; } ;
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {int dev; } ;


 int ACPI_DEVICE_NOTIFY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_install_notify_handler (int ,int ,int ,void*) ;
 struct int3403_sensor* devm_kzalloc (int *,int,int ) ;
 int int3403_notify ;
 int int340x_thermal_zone_add (TYPE_2__*,int *) ;
 int int340x_thermal_zone_remove (int ) ;

__attribute__((used)) static int int3403_sensor_add(struct int3403_priv *priv)
{
 int result = 0;
 struct int3403_sensor *obj;

 obj = devm_kzalloc(&priv->pdev->dev, sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return -ENOMEM;

 priv->priv = obj;

 obj->int340x_zone = int340x_thermal_zone_add(priv->adev, ((void*)0));
 if (IS_ERR(obj->int340x_zone))
  return PTR_ERR(obj->int340x_zone);

 result = acpi_install_notify_handler(priv->adev->handle,
   ACPI_DEVICE_NOTIFY, int3403_notify,
   (void *)priv);
 if (result)
  goto err_free_obj;

 return 0;

 err_free_obj:
 int340x_thermal_zone_remove(obj->int340x_zone);
 return result;
}
