
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_nopin {void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ttt; int itt; int lun; int dlength; int flags; int opcode; } ;
struct iscsi_conn {TYPE_1__* sess; int stat_sn; } ;
struct iscsi_cmd {int buf_ptr_size; int stat_sn; int targ_xfer_tag; int init_task_tag; } ;
struct TYPE_2__ {int max_cmd_sn; int exp_cmd_sn; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_OP_NOOP_IN ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int ) ;
 int iscsit_increment_maxcmdsn (struct iscsi_cmd*,TYPE_1__*) ;
 int pr_debug (char*,char*,int ,int ,int ,int ) ;
 int put_unaligned_le64 (int,int *) ;

void
iscsit_build_nopin_rsp(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
         struct iscsi_nopin *hdr, bool nopout_response)
{
 hdr->opcode = ISCSI_OP_NOOP_IN;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
        hton24(hdr->dlength, cmd->buf_ptr_size);
 if (nopout_response)
  put_unaligned_le64(0xFFFFFFFFFFFFFFFFULL, &hdr->lun);
 hdr->itt = cmd->init_task_tag;
 hdr->ttt = cpu_to_be32(cmd->targ_xfer_tag);
 cmd->stat_sn = (nopout_response) ? conn->stat_sn++ :
      conn->stat_sn;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);

 if (nopout_response)
  iscsit_increment_maxcmdsn(cmd, conn->sess);

 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));

 pr_debug("Built NOPIN %s Response ITT: 0x%08x, TTT: 0x%08x,"
  " StatSN: 0x%08x, Length %u\n", (nopout_response) ?
  "Solicited" : "Unsolicited", cmd->init_task_tag,
  cmd->targ_xfer_tag, cmd->stat_sn, cmd->buf_ptr_size);
}
