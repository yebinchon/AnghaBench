
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_reject {void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ffffffff; int dlength; int flags; int reason; int opcode; } ;
struct iscsi_conn {TYPE_1__* sess; int stat_sn; } ;
struct iscsi_cmd {int stat_sn; int reject_reason; } ;
struct TYPE_2__ {int exp_cmd_sn; int max_cmd_sn; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_HDR_LEN ;
 int ISCSI_OP_REJECT ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (int) ;
 int hton24 (int ,int ) ;

void
iscsit_build_reject(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
      struct iscsi_reject *hdr)
{
 hdr->opcode = ISCSI_OP_REJECT;
 hdr->reason = cmd->reject_reason;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
 hton24(hdr->dlength, ISCSI_HDR_LEN);
 hdr->ffffffff = cpu_to_be32(0xffffffff);
 cmd->stat_sn = conn->stat_sn++;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));

}
