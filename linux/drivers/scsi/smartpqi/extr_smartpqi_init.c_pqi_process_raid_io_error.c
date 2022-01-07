
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_cmnd {int underflow; scalar_t__ result; int sense_buffer; TYPE_2__* device; } ;
struct pqi_scsi_dev {int lun; int target; int bus; } ;
struct pqi_raid_error_info {scalar_t__ status; int data_out_result; int data; int response_data_length; int sense_data_length; int data_out_transferred; } ;
struct pqi_io_request {struct pqi_raid_error_info* error_info; struct scsi_cmnd* scmd; } ;
struct pqi_ctrl_info {TYPE_1__* scsi_host; } ;
struct TYPE_4__ {struct pqi_scsi_dev* hostdata; int host; } ;
struct TYPE_3__ {int host_no; } ;


 scalar_t__ DID_ABORT ;
 scalar_t__ DID_ERROR ;
 scalar_t__ DID_NO_CONNECT ;
 scalar_t__ DID_OK ;
 scalar_t__ DID_SOFT_ERROR ;
 scalar_t__ DID_TIME_OUT ;
 scalar_t__ HARDWARE_ERROR ;
 int KERN_ERR ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 size_t SCSI_SENSE_BUFFERSIZE ;
 size_t get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int memcpy (int ,int ,size_t) ;
 int pqi_take_device_offline (TYPE_2__*,char*) ;
 int printk_ratelimit () ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int,int ,int ,int ,...) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_normalize_sense (int ,size_t,struct scsi_sense_hdr*) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;
 int set_host_byte (struct scsi_cmnd*,scalar_t__) ;
 struct pqi_ctrl_info* shost_to_hba (int ) ;

__attribute__((used)) static void pqi_process_raid_io_error(struct pqi_io_request *io_request)
{
 u8 scsi_status;
 u8 host_byte;
 struct scsi_cmnd *scmd;
 struct pqi_raid_error_info *error_info;
 size_t sense_data_length;
 int residual_count;
 int xfer_count;
 struct scsi_sense_hdr sshdr;

 scmd = io_request->scmd;
 if (!scmd)
  return;

 error_info = io_request->error_info;
 scsi_status = error_info->status;
 host_byte = DID_OK;

 switch (error_info->data_out_result) {
 case 142:
  break;
 case 129:
  xfer_count =
   get_unaligned_le32(&error_info->data_out_transferred);
  residual_count = scsi_bufflen(scmd) - xfer_count;
  scsi_set_resid(scmd, residual_count);
  if (xfer_count < scmd->underflow)
   host_byte = DID_SOFT_ERROR;
  break;
 case 128:
 case 148:
  host_byte = DID_ABORT;
  break;
 case 130:
  host_byte = DID_TIME_OUT;
  break;
 case 146:
 case 131:
 case 147:
 case 144:
 case 145:
 case 143:
 case 141:
 case 136:
 case 138:
 case 139:
 case 132:
 case 137:
 case 133:
 case 140:
 case 134:
 case 135:
 default:
  host_byte = DID_ERROR;
  break;
 }

 sense_data_length = get_unaligned_le16(&error_info->sense_data_length);
 if (sense_data_length == 0)
  sense_data_length =
   get_unaligned_le16(&error_info->response_data_length);
 if (sense_data_length) {
  if (sense_data_length > sizeof(error_info->data))
   sense_data_length = sizeof(error_info->data);

  if (scsi_status == SAM_STAT_CHECK_CONDITION &&
   scsi_normalize_sense(error_info->data,
    sense_data_length, &sshdr) &&
    sshdr.sense_key == HARDWARE_ERROR &&
    sshdr.asc == 0x3e) {
   struct pqi_ctrl_info *ctrl_info = shost_to_hba(scmd->device->host);
   struct pqi_scsi_dev *device = scmd->device->hostdata;

   switch (sshdr.ascq) {
   case 0x1:
    if (printk_ratelimit())
     scmd_printk(KERN_ERR, scmd, "received 'logical unit failure' from controller for scsi %d:%d:%d:%d\n",
      ctrl_info->scsi_host->host_no, device->bus, device->target, device->lun);
    pqi_take_device_offline(scmd->device, "RAID");
    host_byte = DID_NO_CONNECT;
    break;

   default:
    if (printk_ratelimit())
     scmd_printk(KERN_ERR, scmd, "received unhandled error %d from controller for scsi %d:%d:%d:%d\n",
      sshdr.ascq, ctrl_info->scsi_host->host_no, device->bus, device->target, device->lun);
    break;
   }
  }

  if (sense_data_length > SCSI_SENSE_BUFFERSIZE)
   sense_data_length = SCSI_SENSE_BUFFERSIZE;
  memcpy(scmd->sense_buffer, error_info->data,
   sense_data_length);
 }

 scmd->result = scsi_status;
 set_host_byte(scmd, host_byte);
}
