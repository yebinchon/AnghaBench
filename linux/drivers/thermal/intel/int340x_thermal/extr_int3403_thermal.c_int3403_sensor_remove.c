
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct int3403_sensor {int int340x_zone; } ;
struct int3403_priv {TYPE_1__* adev; struct int3403_sensor* priv; } ;
struct TYPE_2__ {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int int3403_notify ;
 int int340x_thermal_zone_remove (int ) ;

__attribute__((used)) static int int3403_sensor_remove(struct int3403_priv *priv)
{
 struct int3403_sensor *obj = priv->priv;

 acpi_remove_notify_handler(priv->adev->handle,
       ACPI_DEVICE_NOTIFY, int3403_notify);
 int340x_thermal_zone_remove(obj->int340x_zone);

 return 0;
}
