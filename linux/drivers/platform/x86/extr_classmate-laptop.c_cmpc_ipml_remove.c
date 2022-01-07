
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipml200_dev {scalar_t__ rf; int bd; } ;
struct acpi_device {int dev; } ;


 int backlight_device_unregister (int ) ;
 struct ipml200_dev* dev_get_drvdata (int *) ;
 int kfree (struct ipml200_dev*) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;

__attribute__((used)) static int cmpc_ipml_remove(struct acpi_device *acpi)
{
 struct ipml200_dev *ipml;

 ipml = dev_get_drvdata(&acpi->dev);

 backlight_device_unregister(ipml->bd);

 if (ipml->rf) {
  rfkill_unregister(ipml->rf);
  rfkill_destroy(ipml->rf);
 }

 kfree(ipml);

 return 0;
}
