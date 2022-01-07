
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tape_request {int op; } ;
struct tape_device {int* modeset_byte; TYPE_2__* cdev; } ;
struct irb {int* ecw; } ;
typedef int __u8 ;
struct TYPE_3__ {int driver_info; } ;
struct TYPE_4__ {int dev; TYPE_1__ id; } ;


 int EACCES ;
 int EIO ;
 int EMEDIUMTYPE ;
 int ENOBUFS ;
 int ENOMEDIUM ;
 int ENOSPC ;
 int MS_UNLOADED ;
 int SENSE_BEGINNING_OF_TAPE ;
 int SENSE_BUS_OUT_CHECK ;
 int SENSE_COMMAND_REJECT ;
 int SENSE_DATA_CHECK ;
 int SENSE_DEFERRED_UNIT_CHECK ;
 int SENSE_DRIVE_ONLINE ;
 int SENSE_EQUIPMENT_CHECK ;
 int SENSE_OVERRUN ;
 int SENSE_RECORD_SEQUENCE_ERR ;
 int SENSE_TAPE_SYNC_MODE ;
 int SENSE_WRITE_MODE ;
 int SENSE_WRITE_PROTECT ;
 int TAPE_IO_SUCCESS ;

 int TO_BLOCK ;


 int TO_DSE ;





 int TO_RUN ;


 int TO_WTM ;
 int dev_warn (int *,char*) ;
 int tape_3480 ;
 int tape_3490 ;
 int tape_34xx_delete_sbid_from (struct tape_device*,int ) ;
 int tape_34xx_done (struct tape_request*) ;
 int tape_34xx_erp_bug (struct tape_device*,struct tape_request*,struct irb*,int) ;
 int tape_34xx_erp_failed (struct tape_request*,int ) ;
 int tape_34xx_erp_overrun (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_34xx_erp_read_opposite (struct tape_device*,struct tape_request*) ;
 int tape_34xx_erp_retry (struct tape_request*) ;
 int tape_34xx_erp_sequence (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_34xx_erp_succeeded (struct tape_request*) ;
 int tape_med_state_set (struct tape_device*,int ) ;

__attribute__((used)) static int
tape_34xx_unit_check(struct tape_device *device, struct tape_request *request,
       struct irb *irb)
{
 int inhibit_cu_recovery;
 __u8* sense;

 inhibit_cu_recovery = (*device->modeset_byte & 0x80) ? 1 : 0;
 sense = irb->ecw;

 if (
  sense[0] & SENSE_COMMAND_REJECT &&
  sense[1] & SENSE_WRITE_PROTECT
 ) {
  if (
   request->op == TO_DSE ||
   request->op == 128 ||
   request->op == TO_WTM
  ) {

   return tape_34xx_erp_failed(request, -EACCES);
  } else {
   return tape_34xx_erp_bug(device, request, irb, -3);
  }
 }
 if ((
  sense[0] == SENSE_DATA_CHECK ||
  sense[0] == SENSE_EQUIPMENT_CHECK ||
  sense[0] == SENSE_EQUIPMENT_CHECK + SENSE_DEFERRED_UNIT_CHECK
 ) && (
  sense[1] == SENSE_DRIVE_ONLINE ||
  sense[1] == SENSE_BEGINNING_OF_TAPE + SENSE_WRITE_MODE
 )) {
  switch (request->op) {







  case 133:
  case 134:

   return tape_34xx_erp_failed(request, -ENOSPC);
  case 136:
   return tape_34xx_erp_retry(request);






  case 132:

   tape_34xx_delete_sbid_from(device, 0);
   return tape_34xx_erp_failed(request, -EIO);

  case 130:

   return tape_34xx_erp_failed(request, 0);






  case 128:

   return tape_34xx_erp_failed(request, -ENOSPC);
  default:
   return tape_34xx_erp_failed(request, 0);
  }
 }


 if (sense[0] & SENSE_BUS_OUT_CHECK)
  return tape_34xx_erp_retry(request);

 if (sense[0] & SENSE_DATA_CHECK) {




  switch (sense[3]) {
  case 0x23:

   if ((sense[2] & SENSE_TAPE_SYNC_MODE) ||
       inhibit_cu_recovery)



    return tape_34xx_erp_bug(device, request,
        irb, -4);


   dev_warn (&device->cdev->dev, "A read error occurred "
    "that cannot be recovered\n");
   return tape_34xx_erp_failed(request, -EIO);
  case 0x25:

   if ((sense[2] & SENSE_TAPE_SYNC_MODE) ||
       inhibit_cu_recovery)



    return tape_34xx_erp_bug(device, request,
        irb, -5);


   dev_warn (&device->cdev->dev, "A write error on the "
    "tape cannot be recovered\n");
   return tape_34xx_erp_failed(request, -EIO);
  case 0x26:

   return tape_34xx_erp_read_opposite(device, request);
  case 0x28:

   dev_warn (&device->cdev->dev, "Writing the ID-mark "
    "failed\n");
   return tape_34xx_erp_failed(request, -EIO);
  case 0x31:

   dev_warn (&device->cdev->dev, "Reading the tape beyond"
    " the end of the recorded area failed\n");
   return tape_34xx_erp_failed(request, -ENOSPC);
  case 0x41:

   dev_warn (&device->cdev->dev, "The tape contains an "
    "incorrect block ID sequence\n");
   return tape_34xx_erp_failed(request, -EIO);
  default:



   if (device->cdev->id.driver_info == tape_3480)
    return tape_34xx_erp_bug(device, request,
        irb, -6);
  }
 }

 if (sense[0] & SENSE_OVERRUN)
  return tape_34xx_erp_overrun(device, request, irb);

 if (sense[1] & SENSE_RECORD_SEQUENCE_ERR)
  return tape_34xx_erp_sequence(device, request, irb);


 switch (sense[3]) {
 case 0x00:

  return TAPE_IO_SUCCESS;
 case 0x21:




  return tape_34xx_erp_retry(request);
 case 0x22:





  dev_warn (&device->cdev->dev, "A path equipment check occurred"
   " for the tape device\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x24:





  return tape_34xx_erp_succeeded(request);
 case 0x27:






  return tape_34xx_erp_retry(request);
 case 0x29:





  return tape_34xx_erp_failed(request, -EIO);
 case 0x2a:




  return tape_34xx_erp_retry(request);
 case 0x2b:




  if (request->op == TO_RUN) {

   tape_med_state_set(device, MS_UNLOADED);
   return tape_34xx_erp_succeeded(request);
  }

  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x2c:




  return tape_34xx_erp_failed(request, -EIO);
 case 0x2d:

  if (request->op == TO_DSE)
   return tape_34xx_erp_failed(request, -EIO);

  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x2e:





  dev_warn (&device->cdev->dev, "The tape unit cannot process "
   "the tape format\n");
  return tape_34xx_erp_failed(request, -EMEDIUMTYPE);
 case 0x30:

  dev_warn (&device->cdev->dev, "The tape medium is write-"
   "protected\n");
  return tape_34xx_erp_failed(request, -EACCES);
 case 0x32:

  dev_warn (&device->cdev->dev, "The tape does not have the "
   "required tape tension\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x33:




  dev_warn (&device->cdev->dev, "The tape unit failed to load"
   " the cartridge\n");
  tape_34xx_delete_sbid_from(device, 0);
  return tape_34xx_erp_failed(request, -EIO);
 case 0x34:




  dev_warn (&device->cdev->dev, "Automatic unloading of the tape"
   " cartridge failed\n");
  if (request->op == TO_RUN)
   return tape_34xx_erp_failed(request, -EIO);
  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x35:







  dev_warn (&device->cdev->dev, "An equipment check has occurred"
   " on the tape unit\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x36:
  if (device->cdev->id.driver_info == tape_3490)

   return tape_34xx_erp_failed(request, -EIO);

  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x37:




  dev_warn (&device->cdev->dev, "The tape information states an"
   " incorrect length\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x38:




  if (request->op==128 ||
      request->op==TO_DSE ||
      request->op==TO_WTM)
   return tape_34xx_erp_failed(request, -ENOSPC);
  return tape_34xx_erp_failed(request, -EIO);
 case 0x39:

  return tape_34xx_erp_failed(request, -EIO);
 case 0x3a:

  dev_warn (&device->cdev->dev, "The tape unit is not ready\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x3b:

  dev_warn (&device->cdev->dev, "The tape medium has been "
   "rewound or unloaded manually\n");
  tape_34xx_delete_sbid_from(device, 0);
  return tape_34xx_erp_failed(request, -EIO);
 case 0x42:




  dev_warn (&device->cdev->dev, "The tape subsystem is running "
   "in degraded mode\n");
  return tape_34xx_erp_retry(request);
 case 0x43:

  tape_34xx_delete_sbid_from(device, 0);
  tape_med_state_set(device, MS_UNLOADED);

  if (sense[1] & SENSE_DRIVE_ONLINE) {
   switch(request->op) {
    case 137:
    case 129:
    case 135:
    case 131:
     return tape_34xx_done(request);
     break;
    default:
     break;
   }
  }
  return tape_34xx_erp_failed(request, -ENOMEDIUM);
 case 0x44:

  if (request->op != TO_BLOCK && request->op != 132)

   return tape_34xx_erp_bug(device, request,
       irb, sense[3]);
  return tape_34xx_erp_failed(request, -EIO);
 case 0x45:

  dev_warn (&device->cdev->dev, "The tape unit is already "
   "assigned\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x46:





  dev_warn (&device->cdev->dev, "The tape unit is not online\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x47:

  dev_warn (&device->cdev->dev, "The control unit has fenced "
   "access to the tape volume\n");
  tape_34xx_delete_sbid_from(device, 0);
  return tape_34xx_erp_failed(request, -EIO);
 case 0x48:

  return tape_34xx_erp_retry(request);
 case 0x49:

  dev_warn (&device->cdev->dev, "A parity error occurred on the "
   "tape bus\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x4a:

  dev_warn (&device->cdev->dev, "I/O error recovery failed on "
   "the tape control unit\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x4b:




  dev_warn (&device->cdev->dev, "The tape unit requires a "
   "firmware update\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x4c:




  return tape_34xx_erp_retry(request);
 case 0x4d:
  if (device->cdev->id.driver_info == tape_3490)





   return tape_34xx_erp_retry(request);

  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x4e:
  if (device->cdev->id.driver_info == tape_3490) {





   dev_warn (&device->cdev->dev, "The maximum block size"
    " for buffered mode is exceeded\n");
   return tape_34xx_erp_failed(request, -ENOBUFS);
  }

  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x50:






  return tape_34xx_erp_retry(request);
 case 0x51:






  return tape_34xx_erp_retry(request);
 case 0x52:

  if (request->op == TO_RUN) {
   tape_med_state_set(device, MS_UNLOADED);
   tape_34xx_delete_sbid_from(device, 0);
   return tape_34xx_erp_succeeded(request);
  }
  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 case 0x53:

  return tape_34xx_erp_retry(request);
 case 0x54:

  return tape_34xx_erp_retry(request);
 case 0x55:

  dev_warn (&device->cdev->dev, "A channel interface error cannot be"
   " recovered\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x56:

  dev_warn (&device->cdev->dev, "A channel protocol error "
   "occurred\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x57:




  return tape_34xx_erp_retry(request);
 case 0x5a:




  dev_warn (&device->cdev->dev, "The tape unit does not support "
   "the tape length\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x5b:

  if (sense[1] & SENSE_BEGINNING_OF_TAPE)

   return tape_34xx_erp_retry(request);
  dev_warn (&device->cdev->dev, "The tape unit does not support"
   " format 3480 XF\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x5c:

  dev_warn (&device->cdev->dev, "The tape unit does not support tape "
   "format 3480-2 XF\n");
  return tape_34xx_erp_failed(request, -EIO);
 case 0x5d:

  dev_warn (&device->cdev->dev, "The tape unit does not support"
   " the current tape length\n");
  return tape_34xx_erp_failed(request, -EMEDIUMTYPE);
 case 0x5e:

  dev_warn (&device->cdev->dev, "The tape unit does not support"
   " the compaction algorithm\n");
  return tape_34xx_erp_failed(request, -EMEDIUMTYPE);


 case 0x23:
 case 0x25:
 case 0x26:
 case 0x28:
 case 0x31:
 case 0x40:
 case 0x41:

 default:
  return tape_34xx_erp_bug(device, request, irb, sense[3]);
 }
}
