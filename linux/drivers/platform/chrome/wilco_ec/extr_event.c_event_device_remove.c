
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;
struct event_device_data {TYPE_1__ dev; int cdev; } ;
struct acpi_device {struct event_device_data* driver_data; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int event_ida ;
 int hangup_device (struct event_device_data*) ;
 int ida_simple_remove (int *,int ) ;

__attribute__((used)) static int event_device_remove(struct acpi_device *adev)
{
 struct event_device_data *dev_data = adev->driver_data;

 cdev_device_del(&dev_data->cdev, &dev_data->dev);
 ida_simple_remove(&event_ida, MINOR(dev_data->dev.devt));
 hangup_device(dev_data);

 return 0;
}
