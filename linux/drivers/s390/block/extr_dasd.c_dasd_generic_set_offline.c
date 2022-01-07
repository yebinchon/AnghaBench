
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int flags; struct dasd_block* block; } ;
struct dasd_block {scalar_t__ bdev; int open_count; } ;
struct ccw_device {int dev; } ;


 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE ;
 int DASD_FLAG_SAFE_OFFLINE_RUNNING ;
 int DASD_STATE_NEW ;
 int EBUSY ;
 int ERESTARTSYS ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PTR_ERR (struct dasd_device*) ;
 int _wait_for_empty_queues (struct dasd_device*) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int dasd_delete_device (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int dasd_free_block (struct dasd_block*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int dasd_set_target_state (struct dasd_device*,int ) ;
 int dev_name (int *) ;
 int fsync_bdev (scalar_t__) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int pr_warn (char*,int ,...) ;
 int set_bit (int ,int *) ;
 int shutdown_waitq ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int ) ;

int dasd_generic_set_offline(struct ccw_device *cdev)
{
 struct dasd_device *device;
 struct dasd_block *block;
 int max_count, open_count, rc;
 unsigned long flags;

 rc = 0;
 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 device = dasd_device_from_cdev_locked(cdev);
 if (IS_ERR(device)) {
  spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
  return PTR_ERR(device);
 }







 if (device->block) {
  max_count = device->block->bdev ? 0 : -1;
  open_count = atomic_read(&device->block->open_count);
  if (open_count > max_count) {
   if (open_count > 0)
    pr_warn("%s: The DASD cannot be set offline with open count %i\n",
     dev_name(&cdev->dev), open_count);
   else
    pr_warn("%s: The DASD cannot be set offline while it is in use\n",
     dev_name(&cdev->dev));
   rc = -EBUSY;
   goto out_err;
  }
 }







 if (test_bit(DASD_FLAG_OFFLINE, &device->flags)) {
  if (test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
   clear_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING,
      &device->flags);
  } else {
   rc = -EBUSY;
   goto out_err;
  }
 }
 set_bit(DASD_FLAG_OFFLINE, &device->flags);






 if (test_and_clear_bit(DASD_FLAG_SAFE_OFFLINE, &device->flags) &&
     !test_and_set_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {

  spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);






  if (device->block) {
   rc = fsync_bdev(device->block->bdev);
   if (rc != 0)
    goto interrupted;
  }
  dasd_schedule_device_bh(device);
  rc = wait_event_interruptible(shutdown_waitq,
           _wait_for_empty_queues(device));
  if (rc != 0)
   goto interrupted;
  spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
  if (!test_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
   rc = -ERESTARTSYS;
   goto out_err;
  }
  clear_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
 }
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);

 dasd_set_target_state(device, DASD_STATE_NEW);

 block = device->block;
 dasd_delete_device(device);




 if (block)
  dasd_free_block(block);

 return 0;

interrupted:

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 clear_bit(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
 clear_bit(DASD_FLAG_OFFLINE, &device->flags);
out_err:
 dasd_put_device(device);
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
 return rc;
}
