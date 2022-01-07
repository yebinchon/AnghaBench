
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct ccw_device {int dummy; } ;






 scalar_t__ IS_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int dasd_generic_last_path_gone (struct dasd_device*) ;
 int dasd_generic_path_operational (struct dasd_device*) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dasd_path_no_path (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;

int dasd_generic_notify(struct ccw_device *cdev, int event)
{
 struct dasd_device *device;
 int ret;

 device = dasd_device_from_cdev_locked(cdev);
 if (IS_ERR(device))
  return 0;
 ret = 0;
 switch (event) {
 case 130:
 case 131:
 case 129:
  dasd_path_no_path(device);
  ret = dasd_generic_last_path_gone(device);
  break;
 case 128:
  ret = 1;
  if (dasd_path_get_opm(device))
   ret = dasd_generic_path_operational(device);
  break;
 }
 dasd_put_device(device);
 return ret;
}
