
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int sense_buffer; TYPE_2__* device; int * cmnd; } ;
struct pmcraid_resource_entry {int sync_reqd; int cfg_entry; int reset_progress; int write_failures; int read_failures; } ;
struct pmcraid_ioasa {int sense_data; int auto_sense_length; int ioasc; } ;
struct pmcraid_instance {int host; } ;
struct pmcraid_cmd {TYPE_1__* ioa_cb; struct pmcraid_instance* drv_inst; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_4__ {int channel; struct pmcraid_resource_entry* hostdata; } ;
struct TYPE_3__ {struct pmcraid_ioasa ioasa; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int DID_PASSTHROUGH ;







 int PMCRAID_IOASC_SENSE_KEY (int) ;
 int PMCRAID_IOASC_SENSE_MASK ;
 int PMCRAID_IOASC_SENSE_STATUS (int) ;


 int RECOVERED_ERROR ;
 scalar_t__ RES_IS_GSCSI (int ) ;
 int SAM_STAT_ACA_ACTIVE ;
 int SAM_STAT_CHECK_CONDITION ;
 scalar_t__ SCSI_CMD_TYPE (int ) ;
 scalar_t__ SCSI_READ_CMD ;
 int SCSI_SENSE_BUFFERSIZE ;
 scalar_t__ SCSI_WRITE_CMD ;
 int atomic_inc (int *) ;
 short le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int min_t (int ,short,int ) ;
 int pmcraid_cancel_all (struct pmcraid_cmd*,int) ;
 int pmcraid_erp_done (struct pmcraid_cmd*) ;
 int pmcraid_frame_auto_sense (struct pmcraid_cmd*) ;
 int pmcraid_info (char*) ;
 int pmcraid_ioasc_logger (int,struct pmcraid_cmd*) ;
 int pmcraid_request_sense (struct pmcraid_cmd*) ;
 int scsi_report_bus_reset (int ,int ) ;
 int u16 ;

__attribute__((used)) static int pmcraid_error_handler(struct pmcraid_cmd *cmd)
{
 struct scsi_cmnd *scsi_cmd = cmd->scsi_cmd;
 struct pmcraid_resource_entry *res = scsi_cmd->device->hostdata;
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 struct pmcraid_ioasa *ioasa = &cmd->ioa_cb->ioasa;
 u32 ioasc = le32_to_cpu(ioasa->ioasc);
 u32 masked_ioasc = ioasc & PMCRAID_IOASC_SENSE_MASK;
 bool sense_copied = 0;

 if (!res) {
  pmcraid_info("resource pointer is NULL\n");
  return 0;
 }


 if (SCSI_CMD_TYPE(scsi_cmd->cmnd[0]) == SCSI_READ_CMD)
  atomic_inc(&res->read_failures);
 else if (SCSI_CMD_TYPE(scsi_cmd->cmnd[0]) == SCSI_WRITE_CMD)
  atomic_inc(&res->write_failures);

 if (!RES_IS_GSCSI(res->cfg_entry) &&
  masked_ioasc != 134) {
  pmcraid_frame_auto_sense(cmd);
 }


 pmcraid_ioasc_logger(ioasc, cmd);

 switch (masked_ioasc) {

 case 136:
  scsi_cmd->result |= (DID_ABORT << 16);
  break;

 case 133:
 case 135:
  scsi_cmd->result |= (DID_NO_CONNECT << 16);
  break;

 case 130:
  res->sync_reqd = 1;
  scsi_cmd->result |= (DID_IMM_RETRY << 16);
  break;

 case 132:
  scsi_cmd->result |= (DID_PASSTHROUGH << 16);
  break;

 case 129:
 case 128:
  if (!res->reset_progress)
   scsi_report_bus_reset(pinstance->host,
           scsi_cmd->device->channel);
  scsi_cmd->result |= (DID_ERROR << 16);
  break;

 case 134:
  scsi_cmd->result |= PMCRAID_IOASC_SENSE_STATUS(ioasc);
  res->sync_reqd = 1;




  if (PMCRAID_IOASC_SENSE_STATUS(ioasc) !=
      SAM_STAT_CHECK_CONDITION &&
      PMCRAID_IOASC_SENSE_STATUS(ioasc) != SAM_STAT_ACA_ACTIVE)
   return 0;




  if (ioasa->auto_sense_length != 0) {
   short sense_len = le16_to_cpu(ioasa->auto_sense_length);
   int data_size = min_t(u16, sense_len,
           SCSI_SENSE_BUFFERSIZE);

   memcpy(scsi_cmd->sense_buffer,
          ioasa->sense_data,
          data_size);
   sense_copied = 1;
  }

  if (RES_IS_GSCSI(res->cfg_entry))
   pmcraid_cancel_all(cmd, sense_copied);
  else if (sense_copied)
   pmcraid_erp_done(cmd);
  else
   pmcraid_request_sense(cmd);

  return 1;

 case 131:
  break;

 default:
  if (PMCRAID_IOASC_SENSE_KEY(ioasc) > RECOVERED_ERROR)
   scsi_cmd->result |= (DID_ERROR << 16);
  break;
 }
 return 0;
}
