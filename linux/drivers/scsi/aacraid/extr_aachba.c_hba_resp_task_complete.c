
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int sense_buffer; } ;
struct aac_hba_resp {int status; int sense_response_buf; int sense_response_data_len; int residual_count; } ;
struct aac_dev {int dummy; } ;


 int ABORT ;
 int COMMAND_COMPLETE ;
 int DID_ABORT ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_OK ;






 int SCSI_SENSE_BUFFERSIZE ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int min_t (int ,int ,int ) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int u8 ;

__attribute__((used)) static void hba_resp_task_complete(struct aac_dev *dev,
     struct scsi_cmnd *scsicmd,
     struct aac_hba_resp *err) {

 scsicmd->result = err->status;

 scsi_set_resid(scsicmd, le32_to_cpu(err->residual_count));

 switch (err->status) {
 case 131:
  scsicmd->result |= DID_OK << 16 | COMMAND_COMPLETE << 8;
  break;
 case 132:
 {
  int len;

  len = min_t(u8, err->sense_response_data_len,
   SCSI_SENSE_BUFFERSIZE);
  if (len)
   memcpy(scsicmd->sense_buffer,
    err->sense_response_buf, len);
  scsicmd->result |= DID_OK << 16 | COMMAND_COMPLETE << 8;
  break;
 }
 case 133:
  scsicmd->result |= DID_BUS_BUSY << 16 | COMMAND_COMPLETE << 8;
  break;
 case 129:
  scsicmd->result |= DID_ABORT << 16 | ABORT << 8;
  break;
 case 130:
 case 128:
 default:
  scsicmd->result |= DID_ERROR << 16 | COMMAND_COMPLETE << 8;
  break;
 }
}
