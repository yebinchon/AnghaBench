
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct se_tmr_req {int dummy; } ;
struct iscsi_tm_rsp {int response; void* max_cmdsn; void* exp_cmdsn; void* statsn; int itt; int flags; int opcode; } ;
struct iscsi_conn {int cid; TYPE_2__* sess; int stat_sn; } ;
struct TYPE_3__ {struct se_tmr_req* se_tmr_req; } ;
struct iscsi_cmd {scalar_t__ stat_sn; int init_task_tag; TYPE_1__ se_cmd; } ;
struct TYPE_4__ {int max_cmd_sn; scalar_t__ exp_cmd_sn; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_OP_SCSI_TMFUNC_RSP ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (scalar_t__) ;
 int iscsit_convert_tcm_tmr_rsp (struct se_tmr_req*) ;
 int iscsit_increment_maxcmdsn (struct iscsi_cmd*,TYPE_2__*) ;
 int pr_debug (char*,int ,scalar_t__,int ,int ) ;

void
iscsit_build_task_mgt_rsp(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
     struct iscsi_tm_rsp *hdr)
{
 struct se_tmr_req *se_tmr = cmd->se_cmd.se_tmr_req;

 hdr->opcode = ISCSI_OP_SCSI_TMFUNC_RSP;
 hdr->flags = ISCSI_FLAG_CMD_FINAL;
 hdr->response = iscsit_convert_tcm_tmr_rsp(se_tmr);
 hdr->itt = cmd->init_task_tag;
 cmd->stat_sn = conn->stat_sn++;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);

 iscsit_increment_maxcmdsn(cmd, conn->sess);
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));

 pr_debug("Built Task Management Response ITT: 0x%08x,"
  " StatSN: 0x%08x, Response: 0x%02x, CID: %hu\n",
  cmd->init_task_tag, cmd->stat_sn, hdr->response, conn->cid);
}
