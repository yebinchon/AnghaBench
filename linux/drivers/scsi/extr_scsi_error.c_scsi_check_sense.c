
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int response_code; int additional_length; int sense_key; int asc; int ascq; } ;
struct scsi_device {int sdev_bflags; int retry_hwerror; int allow_restart; TYPE_2__* sdev_target; int expecting_cc_ua; TYPE_1__* handler; } ;
struct scsi_cmnd {scalar_t__* cmnd; scalar_t__ scsi_done; int* sense_buffer; struct scsi_device* device; } ;
struct TYPE_4__ {int expecting_lun_change; } ;
struct TYPE_3__ {int (* check_sense ) (struct scsi_device*,struct scsi_sense_hdr*) ;} ;



 int ADD_TO_MLQUEUE ;

 int BLIST_RETRY_ASC_C1 ;
 int BLIST_RETRY_ITF ;


 int DID_ALLOC_FAILURE ;
 int DID_MEDIUM_ERROR ;
 int DID_TARGET_FAILURE ;
 int FAILED ;




 int NEEDS_RETRY ;



 int SCSI_RETURN_NOT_HANDLED ;
 int SUCCESS ;
 scalar_t__ TEST_UNIT_READY ;


 int scsi_command_normalize_sense (struct scsi_cmnd*,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_eh_done ;
 int scsi_report_sense (struct scsi_device*,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_device*,struct scsi_sense_hdr*) ;

int scsi_check_sense(struct scsi_cmnd *scmd)
{
 struct scsi_device *sdev = scmd->device;
 struct scsi_sense_hdr sshdr;

 if (! scsi_command_normalize_sense(scmd, &sshdr))
  return FAILED;

 scsi_report_sense(sdev, &sshdr);

 if (scsi_sense_is_deferred(&sshdr))
  return NEEDS_RETRY;

 if (sdev->handler && sdev->handler->check_sense) {
  int rc;

  rc = sdev->handler->check_sense(sdev, &sshdr);
  if (rc != SCSI_RETURN_NOT_HANDLED)
   return rc;

 }

 if (scmd->cmnd[0] == TEST_UNIT_READY && scmd->scsi_done != scsi_eh_done)





  return SUCCESS;





 if (sshdr.response_code == 0x70) {

  if (scmd->sense_buffer[2] & 0xe0)
   return SUCCESS;
 } else {





  if ((sshdr.additional_length > 3) &&
      (scmd->sense_buffer[8] == 0x4) &&
      (scmd->sense_buffer[11] & 0xe0))
   return SUCCESS;
 }

 switch (sshdr.sense_key) {
 case 131:
  return SUCCESS;
 case 130:
  return SUCCESS;

 case 140:
  if (sshdr.asc == 0x10)
   return SUCCESS;

  if (sshdr.asc == 0x44 && sdev->sdev_bflags & BLIST_RETRY_ITF)
   return ADD_TO_MLQUEUE;
  if (sshdr.asc == 0xc1 && sshdr.ascq == 0x01 &&
      sdev->sdev_bflags & BLIST_RETRY_ASC_C1)
   return ADD_TO_MLQUEUE;

  return NEEDS_RETRY;
 case 132:
 case 129:






  if (scmd->device->expecting_cc_ua) {






   if (sshdr.asc != 0x28 || sshdr.ascq != 0x00) {
    scmd->device->expecting_cc_ua = 0;
    return NEEDS_RETRY;
   }
  }





  if (scmd->device->sdev_target->expecting_lun_change &&
      sshdr.asc == 0x3f && sshdr.ascq == 0x0e)
   return NEEDS_RETRY;




  if ((sshdr.asc == 0x04) && (sshdr.ascq == 0x01))
   return NEEDS_RETRY;




  if (scmd->device->allow_restart &&
      (sshdr.asc == 0x04) && (sshdr.ascq == 0x02))
   return FAILED;




  return SUCCESS;


 case 137:
  if (sshdr.asc == 0x27 && sshdr.ascq == 0x07) {

   set_host_byte(scmd, DID_ALLOC_FAILURE);
   return SUCCESS;
  }

 case 138:
 case 128:
 case 133:
 case 139:
  set_host_byte(scmd, DID_TARGET_FAILURE);
  return SUCCESS;

 case 134:
  if (sshdr.asc == 0x11 ||
      sshdr.asc == 0x13 ||
      sshdr.asc == 0x14) {
   set_host_byte(scmd, DID_MEDIUM_ERROR);
   return SUCCESS;
  }
  return NEEDS_RETRY;

 case 136:
  if (scmd->device->retry_hwerror)
   return ADD_TO_MLQUEUE;
  else
   set_host_byte(scmd, DID_TARGET_FAILURE);


 case 135:
  if (sshdr.asc == 0x20 ||
      sshdr.asc == 0x21 ||
      sshdr.asc == 0x22 ||
      sshdr.asc == 0x24 ||
      sshdr.asc == 0x26 ||
      sshdr.asc == 0x27) {
   set_host_byte(scmd, DID_TARGET_FAILURE);
  }
  return SUCCESS;

 default:
  return SUCCESS;
 }
}
