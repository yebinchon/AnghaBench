
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_seq {scalar_t__ offset; } ;
struct iscsi_data {int offset; int dlength; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {scalar_t__ write_data_done; int init_task_tag; struct iscsi_seq* seq_ptr; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int ErrorRecoveryLevel; scalar_t__ DataSequenceInOrder; } ;


 int DATAOUT_CANNOT_RECOVER ;
 int DATAOUT_NORMAL ;
 int DATAOUT_WITHIN_COMMAND_RECOVERY ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ iscsit_dump_data_payload (struct iscsi_conn*,int ,int) ;
 int iscsit_recover_dataout_sequence (struct iscsi_cmd*,scalar_t__,int ) ;
 int ntoh24 (int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int iscsit_dataout_pre_datapduinorder_yes(
 struct iscsi_cmd *cmd,
 unsigned char *buf)
{
 int dump = 0, recovery = 0;
 struct iscsi_conn *conn = cmd->conn;
 struct iscsi_data *hdr = (struct iscsi_data *) buf;
 u32 payload_length = ntoh24(hdr->dlength);
 if (conn->sess->sess_ops->DataSequenceInOrder) {
  if (be32_to_cpu(hdr->offset) != cmd->write_data_done) {
   pr_err("Command ITT: 0x%08x, received offset"
   " %u different than expected %u.\n", cmd->init_task_tag,
    be32_to_cpu(hdr->offset), cmd->write_data_done);
   recovery = 1;
   goto recover;
  }
 } else {
  struct iscsi_seq *seq = cmd->seq_ptr;

  if (be32_to_cpu(hdr->offset) > seq->offset) {
   pr_err("Command ITT: 0x%08x, received offset"
   " %u greater than expected %u.\n", cmd->init_task_tag,
    be32_to_cpu(hdr->offset), seq->offset);
   recovery = 1;
   goto recover;
  } else if (be32_to_cpu(hdr->offset) < seq->offset) {
   pr_err("Command ITT: 0x%08x, received offset"
   " %u less than expected %u, discarding payload.\n",
    cmd->init_task_tag, be32_to_cpu(hdr->offset),
    seq->offset);
   dump = 1;
   goto dump;
  }
 }

 return DATAOUT_NORMAL;

recover:
 if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
  pr_err("Unable to perform within-command recovery"
    " while ERL=0.\n");
  return DATAOUT_CANNOT_RECOVER;
 }
dump:
 if (iscsit_dump_data_payload(conn, payload_length, 1) < 0)
  return DATAOUT_CANNOT_RECOVER;

 return (recovery) ? iscsit_recover_dataout_sequence(cmd,
  be32_to_cpu(hdr->offset), payload_length) :
        (dump) ? DATAOUT_WITHIN_COMMAND_RECOVERY : DATAOUT_NORMAL;
}
