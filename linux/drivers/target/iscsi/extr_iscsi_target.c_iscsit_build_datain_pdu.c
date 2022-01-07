
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scsi_lun {int dummy; } ;
struct iscsi_datain {int flags; int data_sn; int offset; int length; } ;
struct iscsi_data_rsp {int flags; void* offset; void* datasn; void* statsn; void* max_cmdsn; void* exp_cmdsn; void* ttt; int itt; int lun; int dlength; void* residual_count; int opcode; } ;
struct iscsi_conn {int cid; TYPE_2__* sess; } ;
struct TYPE_3__ {int se_cmd_flags; int residual_count; int orig_fe_lun; } ;
struct iscsi_cmd {int targ_xfer_tag; int stat_sn; int init_task_tag; TYPE_1__ se_cmd; } ;
struct TYPE_4__ {int exp_cmd_sn; int max_cmd_sn; } ;


 int ISCSI_FLAG_DATA_ACK ;
 int ISCSI_FLAG_DATA_OVERFLOW ;
 int ISCSI_FLAG_DATA_STATUS ;
 int ISCSI_FLAG_DATA_UNDERFLOW ;
 int ISCSI_OP_SCSI_DATA_IN ;
 int SCF_OVERFLOW_BIT ;
 int SCF_UNDERFLOW_BIT ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (int) ;
 int hton24 (int ,int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int ntohl (void*) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ) ;
 int put_unaligned_le64 (int,int *) ;

void
iscsit_build_datain_pdu(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
   struct iscsi_datain *datain, struct iscsi_data_rsp *hdr,
   bool set_statsn)
{
 hdr->opcode = ISCSI_OP_SCSI_DATA_IN;
 hdr->flags = datain->flags;
 if (hdr->flags & ISCSI_FLAG_DATA_STATUS) {
  if (cmd->se_cmd.se_cmd_flags & SCF_OVERFLOW_BIT) {
   hdr->flags |= ISCSI_FLAG_DATA_OVERFLOW;
   hdr->residual_count = cpu_to_be32(cmd->se_cmd.residual_count);
  } else if (cmd->se_cmd.se_cmd_flags & SCF_UNDERFLOW_BIT) {
   hdr->flags |= ISCSI_FLAG_DATA_UNDERFLOW;
   hdr->residual_count = cpu_to_be32(cmd->se_cmd.residual_count);
  }
 }
 hton24(hdr->dlength, datain->length);
 if (hdr->flags & ISCSI_FLAG_DATA_ACK)
  int_to_scsilun(cmd->se_cmd.orig_fe_lun,
    (struct scsi_lun *)&hdr->lun);
 else
  put_unaligned_le64(0xFFFFFFFFFFFFFFFFULL, &hdr->lun);

 hdr->itt = cmd->init_task_tag;

 if (hdr->flags & ISCSI_FLAG_DATA_ACK)
  hdr->ttt = cpu_to_be32(cmd->targ_xfer_tag);
 else
  hdr->ttt = cpu_to_be32(0xFFFFFFFF);
 if (set_statsn)
  hdr->statsn = cpu_to_be32(cmd->stat_sn);
 else
  hdr->statsn = cpu_to_be32(0xFFFFFFFF);

 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));
 hdr->datasn = cpu_to_be32(datain->data_sn);
 hdr->offset = cpu_to_be32(datain->offset);

 pr_debug("Built DataIN ITT: 0x%08x, StatSN: 0x%08x,"
  " DataSN: 0x%08x, Offset: %u, Length: %u, CID: %hu\n",
  cmd->init_task_tag, ntohl(hdr->statsn), ntohl(hdr->datasn),
  ntohl(hdr->offset), datain->length, conn->cid);
}
