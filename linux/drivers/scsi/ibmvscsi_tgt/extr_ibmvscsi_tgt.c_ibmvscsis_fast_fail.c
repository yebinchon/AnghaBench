
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct srp_cmd {int cdb; } ;
struct se_cmd {scalar_t__ residual_count; scalar_t__ data_length; int scsi_sense_length; int sense_buffer; int scsi_status; } ;
struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_info {scalar_t__ fast_fail; } ;
struct iu_entry {TYPE_1__* sbuf; } ;
struct ibmvscsis_cmd {int flags; struct se_cmd se_cmd; struct iu_entry* iue; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int CMD_FAST_FAIL ;
 scalar_t__ HARDWARE_ERROR ;
 int NO_SENSE ;
 scalar_t__ READ_CMD (int ) ;
 scalar_t__ WRITE_CMD (int ) ;
 scalar_t__ scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;

__attribute__((used)) static u8 ibmvscsis_fast_fail(struct scsi_info *vscsi,
         struct ibmvscsis_cmd *cmd)
{
 struct iu_entry *iue = cmd->iue;
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct srp_cmd *srp = (struct srp_cmd *)iue->sbuf->buf;
 struct scsi_sense_hdr sshdr;
 u8 rc = se_cmd->scsi_status;

 if (vscsi->fast_fail && (READ_CMD(srp->cdb) || WRITE_CMD(srp->cdb)))
  if (scsi_normalize_sense(se_cmd->sense_buffer,
      se_cmd->scsi_sense_length, &sshdr))
   if (sshdr.sense_key == HARDWARE_ERROR &&
       (se_cmd->residual_count == 0 ||
        se_cmd->residual_count == se_cmd->data_length)) {
    rc = NO_SENSE;
    cmd->flags |= CMD_FAST_FAIL;
   }

 return rc;
}
