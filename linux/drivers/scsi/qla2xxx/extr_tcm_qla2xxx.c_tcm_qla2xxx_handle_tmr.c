
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u64 ;
struct se_cmd {int dummy; } ;
struct qla_tgt_mgmt_cmd {struct se_cmd se_cmd; struct fc_port* sess; } ;
struct fc_port {int se_sess; TYPE_1__* vha; } ;
struct TYPE_2__ {int host_no; } ;


 int ENOSYS ;
 int GFP_ATOMIC ;







 int TARGET_SCF_ACK_KREF ;
 int TARGET_SCF_LOOKUP_LUN_FROM_TAG ;
 int TMR_ABORT_TASK ;
 int TMR_ABORT_TASK_SET ;
 int TMR_CLEAR_ACA ;
 int TMR_CLEAR_TASK_SET ;
 int TMR_LUN_RESET ;
 int TMR_TARGET_WARM_RESET ;
 int pr_debug (char*,int ,...) ;
 int target_submit_tmr (struct se_cmd*,int ,int *,int ,struct qla_tgt_mgmt_cmd*,int,int ,int ,int) ;

__attribute__((used)) static int tcm_qla2xxx_handle_tmr(struct qla_tgt_mgmt_cmd *mcmd, u64 lun,
 uint16_t tmr_func, uint32_t tag)
{
 struct fc_port *sess = mcmd->sess;
 struct se_cmd *se_cmd = &mcmd->se_cmd;
 int transl_tmr_func = 0;
 int flags = TARGET_SCF_ACK_KREF;

 switch (tmr_func) {
 case 132:
  pr_debug("%ld: ABTS received\n", sess->vha->host_no);
  transl_tmr_func = TMR_ABORT_TASK;
  flags |= TARGET_SCF_LOOKUP_LUN_FROM_TAG;
  break;
 case 134:
  pr_debug("%ld: 2G Abort Task received\n", sess->vha->host_no);
  transl_tmr_func = TMR_ABORT_TASK;
  break;
 case 131:
  pr_debug("%ld: CLEAR_ACA received\n", sess->vha->host_no);
  transl_tmr_func = TMR_CLEAR_ACA;
  break;
 case 128:
  pr_debug("%ld: TARGET_RESET received\n", sess->vha->host_no);
  transl_tmr_func = TMR_TARGET_WARM_RESET;
  break;
 case 129:
  pr_debug("%ld: LUN_RESET received\n", sess->vha->host_no);
  transl_tmr_func = TMR_LUN_RESET;
  break;
 case 130:
  pr_debug("%ld: CLEAR_TS received\n", sess->vha->host_no);
  transl_tmr_func = TMR_CLEAR_TASK_SET;
  break;
 case 133:
  pr_debug("%ld: ABORT_TS received\n", sess->vha->host_no);
  transl_tmr_func = TMR_ABORT_TASK_SET;
  break;
 default:
  pr_debug("%ld: Unknown task mgmt fn 0x%x\n",
      sess->vha->host_no, tmr_func);
  return -ENOSYS;
 }

 return target_submit_tmr(se_cmd, sess->se_sess, ((void*)0), lun, mcmd,
     transl_tmr_func, GFP_ATOMIC, tag, flags);
}
