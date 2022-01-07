
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {int * rfkill; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;


 int rfkill_destroy (int *) ;
 int rfkill_unregister (int *) ;

__attribute__((used)) static void rbtn_rfkill_exit(struct acpi_device *device)
{
 struct rbtn_data *rbtn_data = device->driver_data;

 if (!rbtn_data->rfkill)
  return;

 rfkill_unregister(rbtn_data->rfkill);
 rfkill_destroy(rbtn_data->rfkill);
 rbtn_data->rfkill = ((void*)0);
}
