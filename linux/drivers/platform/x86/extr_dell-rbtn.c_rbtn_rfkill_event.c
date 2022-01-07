
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {scalar_t__ rfkill; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;


 int rbtn_rfkill_query (scalar_t__,struct acpi_device*) ;

__attribute__((used)) static void rbtn_rfkill_event(struct acpi_device *device)
{
 struct rbtn_data *rbtn_data = device->driver_data;

 if (rbtn_data->rfkill)
  rbtn_rfkill_query(rbtn_data->rfkill, device);
}
