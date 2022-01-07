
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {int type; } ;
struct acpi_device {struct rbtn_data* driver_data; } ;




 int rbtn_acquire (struct acpi_device*,int) ;
 int rbtn_input_exit (struct rbtn_data*) ;
 int rbtn_rfkill_exit (struct acpi_device*) ;

__attribute__((used)) static int rbtn_remove(struct acpi_device *device)
{
 struct rbtn_data *rbtn_data = device->driver_data;

 switch (rbtn_data->type) {
 case 128:
  rbtn_input_exit(rbtn_data);
  break;
 case 129:
  rbtn_rfkill_exit(device);
  break;
 default:
  break;
 }

 rbtn_acquire(device, 0);
 device->driver_data = ((void*)0);

 return 0;
}
