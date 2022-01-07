
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipml200_dev {int * rf; int bd; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct acpi_device {int dev; int handle; } ;


 int BACKLIGHT_PLATFORM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RFKILL_TYPE_WLAN ;
 int backlight_device_register (char*,int *,int ,int *,struct backlight_properties*) ;
 int cmpc_bl_ops ;
 int cmpc_rfkill_ops ;
 int dev_set_drvdata (int *,struct ipml200_dev*) ;
 int kfree (struct ipml200_dev*) ;
 struct ipml200_dev* kmalloc (int,int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int * rfkill_alloc (char*,int *,int ,int *,int ) ;
 int rfkill_destroy (int *) ;
 int rfkill_register (int *) ;

__attribute__((used)) static int cmpc_ipml_add(struct acpi_device *acpi)
{
 int retval;
 struct ipml200_dev *ipml;
 struct backlight_properties props;

 ipml = kmalloc(sizeof(*ipml), GFP_KERNEL);
 if (ipml == ((void*)0))
  return -ENOMEM;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = 7;
 ipml->bd = backlight_device_register("cmpc_bl", &acpi->dev,
          acpi->handle, &cmpc_bl_ops,
          &props);
 if (IS_ERR(ipml->bd)) {
  retval = PTR_ERR(ipml->bd);
  goto out_bd;
 }

 ipml->rf = rfkill_alloc("cmpc_rfkill", &acpi->dev, RFKILL_TYPE_WLAN,
    &cmpc_rfkill_ops, acpi->handle);





 if (ipml->rf) {
  retval = rfkill_register(ipml->rf);
  if (retval) {
   rfkill_destroy(ipml->rf);
   ipml->rf = ((void*)0);
  }
 }

 dev_set_drvdata(&acpi->dev, ipml);
 return 0;

out_bd:
 kfree(ipml);
 return retval;
}
