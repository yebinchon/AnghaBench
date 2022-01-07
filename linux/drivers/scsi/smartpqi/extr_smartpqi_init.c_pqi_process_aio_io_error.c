
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int underflow; int result; int sense_buffer; int device; } ;
struct pqi_io_request {int raid_bypass; int status; struct pqi_aio_error_info* error_info; struct scsi_cmnd* scmd; } ;
struct pqi_aio_error_info {int service_response; int data; int data_length; scalar_t__ data_present; int residual_count; int status; } ;


 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_SOFT_ERROR ;
 int EAGAIN ;
 int HARDWARE_ERROR ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int SAM_STAT_TASK_ABORTED ;
 size_t SCSI_SENSE_BUFFERSIZE ;
 size_t get_unaligned_le16 (int *) ;
 int get_unaligned_le32 (int *) ;
 int memcpy (int ,int ,size_t) ;
 int pqi_aio_path_disabled (struct pqi_io_request*) ;
 int pqi_take_device_offline (int ,char*) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_build_sense_buffer (int ,int ,int ,int,int) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void pqi_process_aio_io_error(struct pqi_io_request *io_request)
{
 u8 scsi_status;
 u8 host_byte;
 struct scsi_cmnd *scmd;
 struct pqi_aio_error_info *error_info;
 size_t sense_data_length;
 int residual_count;
 int xfer_count;
 bool device_offline;

 scmd = io_request->scmd;
 error_info = io_request->error_info;
 host_byte = DID_OK;
 sense_data_length = 0;
 device_offline = 0;

 switch (error_info->service_response) {
 case 140:
  scsi_status = error_info->status;
  break;
 case 139:
  switch (error_info->status) {
  case 132:
   scsi_status = SAM_STAT_TASK_ABORTED;
   break;
  case 128:
   scsi_status = SAM_STAT_GOOD;
   residual_count = get_unaligned_le32(
      &error_info->residual_count);
   scsi_set_resid(scmd, residual_count);
   xfer_count = scsi_bufflen(scmd) - residual_count;
   if (xfer_count < scmd->underflow)
    host_byte = DID_SOFT_ERROR;
   break;
  case 129:
   scsi_status = SAM_STAT_GOOD;
   break;
  case 134:
   pqi_aio_path_disabled(io_request);
   scsi_status = SAM_STAT_GOOD;
   io_request->status = -EAGAIN;
   break;
  case 130:
  case 133:
   if (!io_request->raid_bypass) {
    device_offline = 1;
    pqi_take_device_offline(scmd->device, "AIO");
    host_byte = DID_NO_CONNECT;
   }
   scsi_status = SAM_STAT_CHECK_CONDITION;
   break;
  case 131:
  default:
   scsi_status = SAM_STAT_CHECK_CONDITION;
   break;
  }
  break;
 case 138:
 case 135:
  scsi_status = SAM_STAT_GOOD;
  break;
 case 136:
 case 137:
 default:
  scsi_status = SAM_STAT_CHECK_CONDITION;
  break;
 }

 if (error_info->data_present) {
  sense_data_length =
   get_unaligned_le16(&error_info->data_length);
  if (sense_data_length) {
   if (sense_data_length > sizeof(error_info->data))
    sense_data_length = sizeof(error_info->data);
   if (sense_data_length > SCSI_SENSE_BUFFERSIZE)
    sense_data_length = SCSI_SENSE_BUFFERSIZE;
   memcpy(scmd->sense_buffer, error_info->data,
    sense_data_length);
  }
 }

 if (device_offline && sense_data_length == 0)
  scsi_build_sense_buffer(0, scmd->sense_buffer, HARDWARE_ERROR,
   0x3e, 0x1);

 scmd->result = scsi_status;
 set_host_byte(scmd, host_byte);
}
