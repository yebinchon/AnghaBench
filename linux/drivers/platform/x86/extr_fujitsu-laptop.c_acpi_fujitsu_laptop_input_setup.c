
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fujitsu_laptop {TYPE_2__* input; int phys; } ;
struct acpi_device {int dev; } ;
struct TYPE_5__ {int bustype; } ;
struct TYPE_6__ {TYPE_1__ id; int phys; int name; } ;


 int BUS_HOST ;
 int ENOMEM ;
 char* acpi_device_hid (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 struct fujitsu_laptop* acpi_driver_data (struct acpi_device*) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 int dmi_check_system (int ) ;
 int fujitsu_laptop_dmi_table ;
 int input_register_device (TYPE_2__*) ;
 int keymap ;
 int snprintf (int ,int,char*,char*) ;
 int sparse_keymap_setup (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int acpi_fujitsu_laptop_input_setup(struct acpi_device *device)
{
 struct fujitsu_laptop *priv = acpi_driver_data(device);
 int ret;

 priv->input = devm_input_allocate_device(&device->dev);
 if (!priv->input)
  return -ENOMEM;

 snprintf(priv->phys, sizeof(priv->phys), "%s/input0",
   acpi_device_hid(device));

 priv->input->name = acpi_device_name(device);
 priv->input->phys = priv->phys;
 priv->input->id.bustype = BUS_HOST;

 dmi_check_system(fujitsu_laptop_dmi_table);
 ret = sparse_keymap_setup(priv->input, keymap, ((void*)0));
 if (ret)
  return ret;

 return input_register_device(priv->input);
}
