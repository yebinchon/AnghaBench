
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irb {int scsw; } ;
struct dasd_eckd_private {char suc_reason; scalar_t__ lcu; } ;
struct dasd_device {scalar_t__ state; int features; TYPE_1__* cdev; int flags; scalar_t__ block; int suc_work; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DASD_FEATURE_FAILONSLCK ;
 int DASD_FLAG_IS_RESERVED ;
 int DASD_FLAG_LOCK_STOLEN ;
 int DASD_FLAG_OFFLINE ;
 int DASD_FLAG_SUC ;
 int DASD_FLAG_SUSPENDED ;
 char DASD_SENSE_BIT_0 ;
 char DASD_SIM_SENSE ;
 scalar_t__ DASD_STATE_ONLINE ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*,...) ;
 int DBF_NOTICE ;
 int DBF_WARNING ;
 char DEV_STAT_ATTENTION ;
 char DEV_STAT_DEV_END ;
 char DEV_STAT_UNIT_CHECK ;
 char DEV_STAT_UNIT_EXCEP ;
 int clear_bit (int ,int *) ;
 int dasd_3990_erp_handle_sim (struct dasd_device*,char*) ;
 int dasd_generic_handle_state_change (struct dasd_device*) ;
 int dasd_get_device (struct dasd_device*) ;
 char* dasd_get_sense (struct irb*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_reload_device (struct dasd_device*) ;
 int dev_err (int *,char*) ;
 int schedule_work (int *) ;
 char scsw_dstat (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dasd_eckd_check_for_device_change(struct dasd_device *device,
           struct dasd_ccw_req *cqr,
           struct irb *irb)
{
 char mask;
 char *sense = ((void*)0);
 struct dasd_eckd_private *private = device->private;


 mask = DEV_STAT_ATTENTION | DEV_STAT_DEV_END | DEV_STAT_UNIT_EXCEP;
 if ((scsw_dstat(&irb->scsw) & mask) == mask) {




  if (!device->block && private->lcu &&
      device->state == DASD_STATE_ONLINE &&
      !test_bit(DASD_FLAG_OFFLINE, &device->flags) &&
      !test_bit(DASD_FLAG_SUSPENDED, &device->flags)) {

   dasd_reload_device(device);
  }
  dasd_generic_handle_state_change(device);
  return;
 }

 sense = dasd_get_sense(irb);
 if (!sense)
  return;


 if ((sense[27] & DASD_SENSE_BIT_0) && (sense[7] == 0x0D) &&
     (scsw_dstat(&irb->scsw) & DEV_STAT_UNIT_CHECK)) {
  if (test_and_set_bit(DASD_FLAG_SUC, &device->flags)) {
   DBF_DEV_EVENT(DBF_WARNING, device, "%s",
          "eckd suc: device already notified");
   return;
  }
  sense = dasd_get_sense(irb);
  if (!sense) {
   DBF_DEV_EVENT(DBF_WARNING, device, "%s",
          "eckd suc: no reason code available");
   clear_bit(DASD_FLAG_SUC, &device->flags);
   return;

  }
  private->suc_reason = sense[8];
  DBF_DEV_EVENT(DBF_NOTICE, device, "%s %x",
         "eckd handle summary unit check: reason",
         private->suc_reason);
  dasd_get_device(device);
  if (!schedule_work(&device->suc_work))
   dasd_put_device(device);

  return;
 }


 if (!cqr && !(sense[27] & DASD_SENSE_BIT_0) &&
     ((sense[6] & DASD_SIM_SENSE) == DASD_SIM_SENSE)) {
  dasd_3990_erp_handle_sim(device, sense);
  return;
 }




 if (device->block && (sense[27] & DASD_SENSE_BIT_0) &&
     (sense[7] == 0x3F) &&
     (scsw_dstat(&irb->scsw) & DEV_STAT_UNIT_CHECK) &&
     test_bit(DASD_FLAG_IS_RESERVED, &device->flags)) {
  if (device->features & DASD_FEATURE_FAILONSLCK)
   set_bit(DASD_FLAG_LOCK_STOLEN, &device->flags);
  clear_bit(DASD_FLAG_IS_RESERVED, &device->flags);
  dev_err(&device->cdev->dev,
   "The device reservation was lost\n");
 }
}
