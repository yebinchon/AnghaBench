
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wireless_data {scalar_t__ wq; int led; } ;
struct acpi_device {int dev; } ;


 struct asus_wireless_data* acpi_driver_data (struct acpi_device*) ;
 int destroy_workqueue (scalar_t__) ;
 int devm_led_classdev_unregister (int *,int *) ;

__attribute__((used)) static int asus_wireless_remove(struct acpi_device *adev)
{
 struct asus_wireless_data *data = acpi_driver_data(adev);

 if (data->wq) {
  devm_led_classdev_unregister(&adev->dev, &data->led);
  destroy_workqueue(data->wq);
 }
 return 0;
}
