
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct int3403_sensor {int int340x_zone; } ;
struct int3403_priv {scalar_t__ type; TYPE_1__* pdev; struct int3403_sensor* priv; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int dev; } ;





 scalar_t__ INT3403_TYPE_SENSOR ;
 int THERMAL_TRIP_CHANGED ;
 int THERMAL_TRIP_VIOLATED ;
 int dev_err (int *,char*,int) ;
 int int340x_thermal_read_trips (int ) ;
 int int340x_thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static void int3403_notify(acpi_handle handle,
  u32 event, void *data)
{
 struct int3403_priv *priv = data;
 struct int3403_sensor *obj;

 if (!priv)
  return;

 obj = priv->priv;
 if (priv->type != INT3403_TYPE_SENSOR || !obj)
  return;

 switch (event) {
 case 130:
  break;
 case 128:
  int340x_thermal_zone_device_update(obj->int340x_zone,
         THERMAL_TRIP_VIOLATED);
  break;
 case 129:
  int340x_thermal_read_trips(obj->int340x_zone);
  int340x_thermal_zone_device_update(obj->int340x_zone,
         THERMAL_TRIP_CHANGED);
  break;
 default:
  dev_err(&priv->pdev->dev, "Unsupported event [0x%x]\n", event);
  break;
 }
}
