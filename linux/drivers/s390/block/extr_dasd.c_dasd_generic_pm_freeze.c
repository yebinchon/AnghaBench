
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* discipline; int flags; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int (* freeze ) (struct dasd_device*) ;} ;


 int DASD_FLAG_SUSPENDED ;
 int DASD_STOPPED_PM ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dasd_generic_requeue_all_requests (struct dasd_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct dasd_device*) ;

int dasd_generic_pm_freeze(struct ccw_device *cdev)
{
 struct dasd_device *device = dasd_device_from_cdev(cdev);

 if (IS_ERR(device))
  return PTR_ERR(device);


 set_bit(DASD_FLAG_SUSPENDED, &device->flags);

 if (device->discipline->freeze)
  device->discipline->freeze(device);


 dasd_device_set_stop_bits(device, DASD_STOPPED_PM);

 return dasd_generic_requeue_all_requests(device);
}
