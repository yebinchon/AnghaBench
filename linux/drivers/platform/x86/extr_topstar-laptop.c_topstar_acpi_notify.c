
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct topstar_laptop {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct topstar_laptop* acpi_driver_data (struct acpi_device*) ;
 int topstar_input_notify (struct topstar_laptop*,int) ;

__attribute__((used)) static void topstar_acpi_notify(struct acpi_device *device, u32 event)
{
 struct topstar_laptop *topstar = acpi_driver_data(device);
 static bool dup_evnt[2];
 bool *dup;


 if (event == 0x83 || event == 0x84) {
  dup = &dup_evnt[event - 0x83];
  if (*dup) {
   *dup = 0;
   return;
  }
  *dup = 1;
 }

 topstar_input_notify(topstar, event);
}
