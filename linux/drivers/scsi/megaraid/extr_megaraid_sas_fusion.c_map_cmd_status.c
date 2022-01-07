
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scsi_cmnd {int result; int sense_buffer; } ;
struct fusion_context {int dummy; } ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_IMM_RETRY ;
 int DID_OK ;
 int DRIVER_SENSE ;
 int KERN_INFO ;







 int READ_WRITE_LDIO ;
 int READ_WRITE_SYSPDIO ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_SENSE_BUFFERSIZE ;
 int megasas_cmd_type (struct scsi_cmnd*) ;
 int memcpy (int ,int*,int ) ;
 int memset (int ,int ,int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int,int,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;

__attribute__((used)) static void
map_cmd_status(struct fusion_context *fusion,
  struct scsi_cmnd *scmd, u8 status, u8 ext_status,
  u32 data_length, u8 *sense)
{
 u8 cmd_type;
 int resid;

 cmd_type = megasas_cmd_type(scmd);
 switch (status) {

 case 130:
  scmd->result = DID_OK << 16;
  break;

 case 128:
 case 132:
  scmd->result = (DID_ERROR << 16) | ext_status;
  break;

 case 129:

  scmd->result = (DID_OK << 16) | ext_status;
  if (ext_status == SAM_STAT_CHECK_CONDITION) {
   memset(scmd->sense_buffer, 0,
          SCSI_SENSE_BUFFERSIZE);
   memcpy(scmd->sense_buffer, sense,
          SCSI_SENSE_BUFFERSIZE);
   scmd->result |= DRIVER_SENSE << 24;
  }







  resid = (scsi_bufflen(scmd) - data_length);
  scsi_set_resid(scmd, resid);

  if (resid &&
   ((cmd_type == READ_WRITE_LDIO) ||
   (cmd_type == READ_WRITE_SYSPDIO)))
   scmd_printk(KERN_INFO, scmd, "BRCM Debug mfi stat 0x%x, data len"
    " requested/completed 0x%x/0x%x\n",
    status, scsi_bufflen(scmd), data_length);
  break;

 case 131:
 case 133:
  scmd->result = DID_BAD_TARGET << 16;
  break;
 case 134:
  scmd->result = DID_IMM_RETRY << 16;
  break;
 default:
  scmd->result = DID_ERROR << 16;
  break;
 }
}
