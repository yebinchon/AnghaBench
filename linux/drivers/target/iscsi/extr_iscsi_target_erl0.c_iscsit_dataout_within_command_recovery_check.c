
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_seq {scalar_t__ status; scalar_t__ offset; scalar_t__ data_sn; } ;
struct iscsi_data {int datasn; int offset; int dlength; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {int cmd_flags; scalar_t__ write_data_done; struct iscsi_seq* seq_ptr; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; scalar_t__ DataSequenceInOrder; } ;


 int DATAOUT_CANNOT_RECOVER ;
 int DATAOUT_NORMAL ;
 scalar_t__ DATAOUT_SEQUENCE_COMPLETE ;
 scalar_t__ DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY ;
 int ICF_WITHIN_COMMAND_RECOVERY ;
 scalar_t__ be32_to_cpu (int ) ;
 int iscsit_dump_data_payload (struct iscsi_conn*,int ,int) ;
 struct iscsi_seq* iscsit_get_seq_holder (struct iscsi_cmd*,scalar_t__,int ) ;
 int ntoh24 (int ) ;
 int pr_err (char*,int ,int ,int ) ;

__attribute__((used)) static int iscsit_dataout_within_command_recovery_check(
 struct iscsi_cmd *cmd,
 unsigned char *buf)
{
 struct iscsi_conn *conn = cmd->conn;
 struct iscsi_data *hdr = (struct iscsi_data *) buf;
 u32 payload_length = ntoh24(hdr->dlength);
 if (conn->sess->sess_ops->DataSequenceInOrder) {
  if ((cmd->cmd_flags & ICF_WITHIN_COMMAND_RECOVERY) &&
      cmd->write_data_done != be32_to_cpu(hdr->offset))
   goto dump;

  cmd->cmd_flags &= ~ICF_WITHIN_COMMAND_RECOVERY;
 } else {
  struct iscsi_seq *seq;

  seq = iscsit_get_seq_holder(cmd, be32_to_cpu(hdr->offset),
         payload_length);
  if (!seq)
   return DATAOUT_CANNOT_RECOVER;



  cmd->seq_ptr = seq;

  if (conn->sess->sess_ops->DataPDUInOrder) {
   if (seq->status ==
       DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY &&
      (seq->offset != be32_to_cpu(hdr->offset) ||
       seq->data_sn != be32_to_cpu(hdr->datasn)))
    goto dump;
  } else {
   if (seq->status ==
        DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY &&
       seq->data_sn != be32_to_cpu(hdr->datasn))
    goto dump;
  }

  if (seq->status == DATAOUT_SEQUENCE_COMPLETE)
   goto dump;

  if (seq->status != DATAOUT_SEQUENCE_COMPLETE)
   seq->status = 0;
 }

 return DATAOUT_NORMAL;

dump:
 pr_err("Dumping DataOUT PDU Offset: %u Length: %d DataSN:"
  " 0x%08x\n", hdr->offset, payload_length, hdr->datasn);
 return iscsit_dump_data_payload(conn, payload_length, 1);
}
