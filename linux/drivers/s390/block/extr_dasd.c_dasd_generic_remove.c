
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {struct dasd_block* block; int flags; } ;
struct dasd_block {int dummy; } ;
struct ccw_device {int * handler; } ;


 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE_RUNNING ;
 int DASD_STATE_NEW ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int dasd_delete_device (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_free_block (struct dasd_block*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_remove_sysfs_files (struct ccw_device*) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void dasd_generic_remove(struct ccw_device *cdev)
{
 struct dasd_device *device;
 struct dasd_block *block;

 cdev->handler = ((void*)0);

 device = dasd_device_from_cdev(cdev);
 if (IS_ERR(device)) {
  dasd_remove_sysfs_files(cdev);
  return;
 }
 if (test_and_set_bit(DASD_FLAG_OFFLINE, &device->flags) &&
     !test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {

  dasd_put_device(device);
  dasd_remove_sysfs_files(cdev);
  return;
 }





 dasd_set_target_state(device, DASD_STATE_NEW);

 block = device->block;
 dasd_delete_device(device);




 if (block)
  dasd_free_block(block);

 dasd_remove_sysfs_files(cdev);
}
