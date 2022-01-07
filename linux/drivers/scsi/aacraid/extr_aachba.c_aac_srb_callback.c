
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {char* sense_buffer; int* cmnd; int result; int underflow; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct fib {int flags; } ;
struct aac_srb_reply {void* scsi_status; int sense_data; void* status; void* sense_data_size; void* srb_status; void* data_xfer_length; } ;


 int ABORT ;
 int ATA_12 ;
 int ATA_16 ;
 int BUG_ON (int ) ;
 int COMMAND_COMPLETE ;
 int DID_ABORT ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_PARITY ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int FIB_CONTEXT_FLAG_FASTRESP ;

 int MESSAGE_REJECT ;
 int MSG_PARITY_ERROR ;




 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int SCSI_SENSE_BUFFERSIZE ;
 int ST_OK ;




 int aac_expose_phy_device (struct scsi_cmnd*) ;
 int aac_fib_complete (struct fib*) ;
 int aac_get_status_string (int) ;
 int aac_valid_context (struct scsi_cmnd*,struct fib*) ;
 void* cpu_to_le32 (int) ;
 scalar_t__ expose_physicals ;
 scalar_t__ fib_data (struct fib*) ;
 int le32_to_cpu (void*) ;
 int memcpy (char*,int ,int) ;
 int min_t (int ,int,int ) ;
 int pr_info (char*,int,int ,int,int) ;
 int pr_warn (char*,...) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int stub1 (struct scsi_cmnd*) ;
 int u32 ;

__attribute__((used)) static void aac_srb_callback(void *context, struct fib * fibptr)
{
 struct aac_srb_reply *srbreply;
 struct scsi_cmnd *scsicmd;

 scsicmd = (struct scsi_cmnd *) context;

 if (!aac_valid_context(scsicmd, fibptr))
  return;

 BUG_ON(fibptr == ((void*)0));

 srbreply = (struct aac_srb_reply *) fib_data(fibptr);

 scsicmd->sense_buffer[0] = '\0';

 if (fibptr->flags & FIB_CONTEXT_FLAG_FASTRESP) {

  srbreply->srb_status = cpu_to_le32(134);
  srbreply->scsi_status = cpu_to_le32(SAM_STAT_GOOD);
 } else {



  scsi_set_resid(scsicmd, scsi_bufflen(scsicmd)
       - le32_to_cpu(srbreply->data_xfer_length));
 }


 scsi_dma_unmap(scsicmd);


 if (scsicmd->cmnd[0] == 167 && !(scsicmd->cmnd[1] & 0x01)
   && expose_physicals > 0)
  aac_expose_phy_device(scsicmd);





 if (le32_to_cpu(srbreply->status) != ST_OK) {
  int len;

  pr_warn("aac_srb_callback: srb failed, status = %d\n",
    le32_to_cpu(srbreply->status));
  len = min_t(u32, le32_to_cpu(srbreply->sense_data_size),
       SCSI_SENSE_BUFFERSIZE);
  scsicmd->result = DID_ERROR << 16
    | COMMAND_COMPLETE << 8
    | SAM_STAT_CHECK_CONDITION;
  memcpy(scsicmd->sense_buffer,
    srbreply->sense_data, len);
 }




 switch ((le32_to_cpu(srbreply->srb_status))&0x3f) {
 case 151:
 case 139:
 case 134:
  scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8;
  break;
 case 155:
  switch (scsicmd->cmnd[0]) {
  case 163:
  case 128:
  case 166:
  case 131:
  case 165:
  case 130:
  case 164:
  case 129:
   if (le32_to_cpu(srbreply->data_xfer_length)
      < scsicmd->underflow)
    pr_warn("aacraid: SCSI CMD underflow\n");
   else
    pr_warn("aacraid: SCSI CMD Data Overrun\n");
   scsicmd->result = DID_ERROR << 16
     | COMMAND_COMPLETE << 8;
   break;
  case 167:
   scsicmd->result = DID_OK << 16
     | COMMAND_COMPLETE << 8;
   break;
  default:
   scsicmd->result = DID_OK << 16 | COMMAND_COMPLETE << 8;
   break;
  }
  break;
 case 162:
  scsicmd->result = DID_ABORT << 16 | ABORT << 8;
  break;
 case 161:




  scsicmd->result = DID_ERROR << 16 | ABORT << 8;
  break;
 case 140:
  scsicmd->result = DID_PARITY << 16
    | MSG_PARITY_ERROR << 8;
  break;
 case 142:
 case 148:
 case 146:
 case 149:
 case 135:
  scsicmd->result = DID_NO_CONNECT << 16
    | COMMAND_COMPLETE << 8;
  break;

 case 156:
 case 133:
  scsicmd->result = DID_TIME_OUT << 16
    | COMMAND_COMPLETE << 8;
  break;

 case 158:
  scsicmd->result = DID_BUS_BUSY << 16
    | COMMAND_COMPLETE << 8;
  break;

 case 157:
  scsicmd->result = DID_RESET << 16
    | COMMAND_COMPLETE << 8;
  break;

 case 145:
  scsicmd->result = DID_ERROR << 16
    | MESSAGE_REJECT << 8;
  break;
 case 137:
 case 152:
 case 147:
 case 136:
 case 141:
 case 132:
 case 138:
 case 159:
 case 154:
 case 160:
 case 143:
 case 144:
 case 150:
 case 153:
 default:
  if ((scsicmd->cmnd[0] == ATA_12)
   || (scsicmd->cmnd[0] == ATA_16)) {

   if (scsicmd->cmnd[2] & (0x01 << 5)) {
    scsicmd->result = DID_OK << 16
     | COMMAND_COMPLETE << 8;
   break;
   } else {
    scsicmd->result = DID_ERROR << 16
     | COMMAND_COMPLETE << 8;
   break;
   }
  } else {
   scsicmd->result = DID_ERROR << 16
    | COMMAND_COMPLETE << 8;
   break;
  }
 }
 if (le32_to_cpu(srbreply->scsi_status)
   == SAM_STAT_CHECK_CONDITION) {
  int len;

  scsicmd->result |= SAM_STAT_CHECK_CONDITION;
  len = min_t(u32, le32_to_cpu(srbreply->sense_data_size),
       SCSI_SENSE_BUFFERSIZE);




  memcpy(scsicmd->sense_buffer,
    srbreply->sense_data, len);
 }




 scsicmd->result |= le32_to_cpu(srbreply->scsi_status);

 aac_fib_complete(fibptr);
 scsicmd->scsi_done(scsicmd);
}
