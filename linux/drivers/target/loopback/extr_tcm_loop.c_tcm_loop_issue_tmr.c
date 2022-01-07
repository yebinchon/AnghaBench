
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tcm_loop_tpg {struct tcm_loop_nexus* tl_nexus; } ;
struct tcm_loop_nexus {struct se_session* se_sess; } ;
struct se_cmd {TYPE_1__* se_tmr_req; } ;
struct tcm_loop_cmd {int tmr_done; int tl_sense_buf; struct se_cmd tl_se_cmd; } ;
struct se_session {int dummy; } ;
typedef enum tcm_tmreq_table { ____Placeholder_tcm_tmreq_table } tcm_tmreq_table ;
struct TYPE_2__ {int response; } ;


 int GFP_KERNEL ;
 int TARGET_SCF_ACK_KREF ;
 int TMR_FUNCTION_FAILED ;
 int init_completion (int *) ;
 int kmem_cache_free (int ,struct tcm_loop_cmd*) ;
 struct tcm_loop_cmd* kmem_cache_zalloc (int ,int ) ;
 int pr_err (char*) ;
 int target_put_sess_cmd (struct se_cmd*) ;
 int target_submit_tmr (struct se_cmd*,struct se_session*,int ,int ,int *,int,int ,int,int ) ;
 int tcm_loop_cmd_cache ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int tcm_loop_issue_tmr(struct tcm_loop_tpg *tl_tpg,
         u64 lun, int task, enum tcm_tmreq_table tmr)
{
 struct se_cmd *se_cmd;
 struct se_session *se_sess;
 struct tcm_loop_nexus *tl_nexus;
 struct tcm_loop_cmd *tl_cmd;
 int ret = TMR_FUNCTION_FAILED, rc;




 tl_nexus = tl_tpg->tl_nexus;
 if (!tl_nexus) {
  pr_err("Unable to perform device reset without active I_T Nexus\n");
  return ret;
 }

 tl_cmd = kmem_cache_zalloc(tcm_loop_cmd_cache, GFP_KERNEL);
 if (!tl_cmd)
  return ret;

 init_completion(&tl_cmd->tmr_done);

 se_cmd = &tl_cmd->tl_se_cmd;
 se_sess = tl_tpg->tl_nexus->se_sess;

 rc = target_submit_tmr(se_cmd, se_sess, tl_cmd->tl_sense_buf, lun,
          ((void*)0), tmr, GFP_KERNEL, task,
          TARGET_SCF_ACK_KREF);
 if (rc < 0)
  goto release;
 wait_for_completion(&tl_cmd->tmr_done);
 ret = se_cmd->se_tmr_req->response;
 target_put_sess_cmd(se_cmd);

out:
 return ret;

release:
 kmem_cache_free(tcm_loop_cmd_cache, tl_cmd);
 goto out;
}
