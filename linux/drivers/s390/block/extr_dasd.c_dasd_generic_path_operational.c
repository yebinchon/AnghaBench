
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int stopped; TYPE_2__* block; TYPE_1__* cdev; } ;
struct TYPE_4__ {scalar_t__ request_queue; } ;
struct TYPE_3__ {int dev; } ;


 int DASD_STOPPED_DC_WAIT ;
 int DASD_UNRESUMED_PM ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int blk_mq_run_hw_queues (scalar_t__,int) ;
 int dasd_device_remove_stop_bits (struct dasd_device*,int) ;
 int dasd_restore_device (struct dasd_device*) ;
 int dasd_schedule_block_bh (TYPE_2__*) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int dev_info (int *,char*) ;
 int generic_waitq ;
 int wake_up (int *) ;

int dasd_generic_path_operational(struct dasd_device *device)
{
 dev_info(&device->cdev->dev, "A channel path to the device has become "
   "operational\n");
 DBF_DEV_EVENT(DBF_WARNING, device, "%s", "path operational");
 dasd_device_remove_stop_bits(device, DASD_STOPPED_DC_WAIT);
 if (device->stopped & DASD_UNRESUMED_PM) {
  dasd_device_remove_stop_bits(device, DASD_UNRESUMED_PM);
  dasd_restore_device(device);
  return 1;
 }
 dasd_schedule_device_bh(device);
 if (device->block) {
  dasd_schedule_block_bh(device->block);
  if (device->block->request_queue)
   blk_mq_run_hw_queues(device->block->request_queue,
          1);
  }

 if (!device->stopped)
  wake_up(&generic_waitq);

 return 1;
}
