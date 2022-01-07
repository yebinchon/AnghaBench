
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct int3402_thermal_data {int int340x_zone; } ;
typedef int acpi_handle ;




 int THERMAL_TRIP_VIOLATED ;
 int int340x_thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static void int3402_notify(acpi_handle handle, u32 event, void *data)
{
 struct int3402_thermal_data *priv = data;

 if (!priv)
  return;

 switch (event) {
 case 129:
  break;
 case 128:
  int340x_thermal_zone_device_update(priv->int340x_zone,
         THERMAL_TRIP_VIOLATED);
  break;
 default:
  break;
 }
}
