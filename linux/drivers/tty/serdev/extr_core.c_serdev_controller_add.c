
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_controller {int dev; int nr; } ;


 int EAGAIN ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int acpi_serdev_register_devices (struct serdev_controller*) ;
 int dev_dbg (int *,char*,int,int) ;
 int device_add (int *) ;
 int device_del (int *) ;
 int is_registered ;
 int of_serdev_register_devices (struct serdev_controller*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;

int serdev_controller_add(struct serdev_controller *ctrl)
{
 int ret_of, ret_acpi, ret;


 if (WARN_ON(!is_registered))
  return -EAGAIN;

 ret = device_add(&ctrl->dev);
 if (ret)
  return ret;

 pm_runtime_enable(&ctrl->dev);

 ret_of = of_serdev_register_devices(ctrl);
 ret_acpi = acpi_serdev_register_devices(ctrl);
 if (ret_of && ret_acpi) {
  dev_dbg(&ctrl->dev, "no devices registered: of:%d acpi:%d\n",
   ret_of, ret_acpi);
  ret = -ENODEV;
  goto err_rpm_disable;
 }

 dev_dbg(&ctrl->dev, "serdev%d registered: dev:%p\n",
  ctrl->nr, &ctrl->dev);
 return 0;

err_rpm_disable:
 pm_runtime_disable(&ctrl->dev);
 device_del(&ctrl->dev);
 return ret;
}
