
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ block; } ;
struct ccw_device {int dummy; } ;


 scalar_t__ IS_ERR (struct dasd_device*) ;
 int _wait_for_empty_queues (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_schedule_block_bh (scalar_t__) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int shutdown_waitq ;
 int wait_event (int ,int ) ;

void dasd_generic_shutdown(struct ccw_device *cdev)
{
 struct dasd_device *device;

 device = dasd_device_from_cdev(cdev);
 if (IS_ERR(device))
  return;

 if (device->block)
  dasd_schedule_block_bh(device->block);

 dasd_schedule_device_bh(device);

 wait_event(shutdown_waitq, _wait_for_empty_queues(device));
}
