
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {int dummy; } ;
struct tape_device {int cdev_id; TYPE_1__* cdev; } ;
struct tape_3590_sense {int rc_rqc; int rac; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_2__ {int dev; } ;


 int DBF_EVENT (int,char*,int) ;
 int EBUSY ;
 int EIO ;
 int EMEDIUMTYPE ;
 int ENOMEDIUM ;
 int ENOSPC ;
 int EPERM ;
 int MS_UNLOADED ;
 int TO_CRYPT_OFF ;
 int dev_warn (int *,char*) ;
 int tape_3590_crypt_error (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_basic (struct tape_device*,struct tape_request*,struct irb*,int ) ;
 int tape_3590_erp_long_busy (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_read_alternate (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_read_buf_log (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_read_opposite (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_special_interrupt (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_erp_swap (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_print_era_msg (struct tape_device*,struct irb*) ;
 int tape_3590_schedule_work (struct tape_device*,int ) ;
 int tape_med_state_set (struct tape_device*,int ) ;

__attribute__((used)) static int
tape_3590_unit_check(struct tape_device *device, struct tape_request *request,
       struct irb *irb)
{
 struct tape_3590_sense *sense;

 sense = (struct tape_3590_sense *) irb->ecw;

 DBF_EVENT(6, "Unit Check: RQC = %x\n", sense->rc_rqc);






 switch (sense->rc_rqc) {

 case 0x1110:
  tape_3590_print_era_msg(device, irb);
  return tape_3590_erp_read_buf_log(device, request, irb);

 case 0x2011:
  tape_3590_print_era_msg(device, irb);
  return tape_3590_erp_read_alternate(device, request, irb);

 case 0x2230:
 case 0x2231:
  tape_3590_print_era_msg(device, irb);
  return tape_3590_erp_special_interrupt(device, request, irb);
 case 0x2240:
  return tape_3590_crypt_error(device, request, irb);

 case 0x3010:
  DBF_EVENT(2, "(%08x): Backward at Beginning of Partition\n",
     device->cdev_id);
  return tape_3590_erp_basic(device, request, irb, -ENOSPC);
 case 0x3012:
  DBF_EVENT(2, "(%08x): Forward at End of Partition\n",
     device->cdev_id);
  return tape_3590_erp_basic(device, request, irb, -ENOSPC);
 case 0x3020:
  DBF_EVENT(2, "(%08x): End of Data Mark\n", device->cdev_id);
  return tape_3590_erp_basic(device, request, irb, -ENOSPC);

 case 0x3122:
  DBF_EVENT(2, "(%08x): Rewind Unload initiated\n",
     device->cdev_id);
  return tape_3590_erp_basic(device, request, irb, -EIO);
 case 0x3123:
  DBF_EVENT(2, "(%08x): Rewind Unload complete\n",
     device->cdev_id);
  tape_med_state_set(device, MS_UNLOADED);
  tape_3590_schedule_work(device, TO_CRYPT_OFF);
  return tape_3590_erp_basic(device, request, irb, 0);

 case 0x4010:




  tape_med_state_set(device, MS_UNLOADED);
  tape_3590_schedule_work(device, TO_CRYPT_OFF);
  return tape_3590_erp_basic(device, request, irb, -ENOMEDIUM);
 case 0x4012:

  DBF_EVENT(6, "(%08x): LONG BUSY\n", device->cdev_id);
  tape_3590_print_era_msg(device, irb);
  return tape_3590_erp_basic(device, request, irb, -EBUSY);
 case 0x4014:
  DBF_EVENT(6, "(%08x): Crypto LONG BUSY\n", device->cdev_id);
  return tape_3590_erp_long_busy(device, request, irb);

 case 0x5010:
  if (sense->rac == 0xd0) {

   tape_3590_print_era_msg(device, irb);
   return tape_3590_erp_swap(device, request, irb);
  }
  if (sense->rac == 0x26) {

   tape_3590_print_era_msg(device, irb);
   return tape_3590_erp_read_opposite(device, request,
          irb);
  }
  return tape_3590_erp_basic(device, request, irb, -EIO);
 case 0x5020:
 case 0x5021:
 case 0x5022:
 case 0x5040:
 case 0x5041:
 case 0x5042:
  tape_3590_print_era_msg(device, irb);
  return tape_3590_erp_swap(device, request, irb);

 case 0x5110:
 case 0x5111:
  return tape_3590_erp_basic(device, request, irb, -EMEDIUMTYPE);

 case 0x5120:
 case 0x1120:
  tape_med_state_set(device, MS_UNLOADED);
  tape_3590_schedule_work(device, TO_CRYPT_OFF);
  return tape_3590_erp_basic(device, request, irb, -ENOMEDIUM);

 case 0x6020:
  return tape_3590_erp_basic(device, request, irb, -EMEDIUMTYPE);

 case 0x8011:
  return tape_3590_erp_basic(device, request, irb, -EPERM);
 case 0x8013:
  dev_warn (&device->cdev->dev, "A different host has privileged"
   " access to the tape unit\n");
  return tape_3590_erp_basic(device, request, irb, -EPERM);
 default:
  return tape_3590_erp_basic(device, request, irb, -EIO);
 }
}
