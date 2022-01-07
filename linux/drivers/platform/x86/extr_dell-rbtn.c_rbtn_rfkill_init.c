
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbtn_data {int * rfkill; } ;
struct acpi_device {int dev; struct rbtn_data* driver_data; } ;


 int ENOMEM ;
 int RFKILL_TYPE_WLAN ;
 int rbtn_ops ;
 int * rfkill_alloc (char*,int *,int ,int *,struct acpi_device*) ;
 int rfkill_destroy (int *) ;
 int rfkill_register (int *) ;

__attribute__((used)) static int rbtn_rfkill_init(struct acpi_device *device)
{
 struct rbtn_data *rbtn_data = device->driver_data;
 int ret;

 if (rbtn_data->rfkill)
  return 0;






 rbtn_data->rfkill = rfkill_alloc("dell-rbtn", &device->dev,
      RFKILL_TYPE_WLAN, &rbtn_ops, device);
 if (!rbtn_data->rfkill)
  return -ENOMEM;

 ret = rfkill_register(rbtn_data->rfkill);
 if (ret) {
  rfkill_destroy(rbtn_data->rfkill);
  rbtn_data->rfkill = ((void*)0);
  return ret;
 }

 return 0;
}
