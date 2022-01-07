
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_15__ {int* scsi_lun; } ;
struct srp_tsk_mgmt {int tsk_mgmt_func; TYPE_8__ lun; int tag; int task_tag; int sol_not; } ;
struct TYPE_10__ {struct ibmvscsis_nexus* ibmv_nexus; } ;
struct scsi_info {int intr_lock; int dev; int active_q; TYPE_2__ tport; } ;
struct iu_entry {int dummy; } ;
struct ibmvscsis_nexus {int se_sess; } ;
struct TYPE_14__ {TYPE_4__* se_tmr_req; void* tag; } ;
struct TYPE_11__ {int sol_not; } ;
struct ibmvscsis_cmd {TYPE_6__ se_cmd; int list; TYPE_3__ rsp; struct iu_entry* iue; } ;
struct TYPE_9__ {struct srp_tsk_mgmt tsk_mgmt; } ;
struct TYPE_13__ {TYPE_1__ srp; } ;
struct TYPE_12__ {int response; } ;


 int GFP_KERNEL ;





 int TMR_ABORT_TASK ;
 int TMR_ABORT_TASK_SET ;
 int TMR_CLEAR_ACA ;
 int TMR_CLEAR_TASK_SET ;
 int TMR_FUNCTION_REJECTED ;
 int TMR_LUN_RESET ;
 int TMR_TASK_MGMT_FUNCTION_NOT_SUPPORTED ;
 void* be64_to_cpu (int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int scsilun_to_int (TYPE_8__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int target_submit_tmr (TYPE_6__*,int ,int *,int ,struct srp_tsk_mgmt*,int,int ,void*,int ) ;
 int transport_send_check_condition_and_sense (TYPE_6__*,int ,int ) ;
 TYPE_5__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static void ibmvscsis_parse_task(struct scsi_info *vscsi,
     struct ibmvscsis_cmd *cmd)
{
 struct iu_entry *iue = cmd->iue;
 struct srp_tsk_mgmt *srp_tsk = &vio_iu(iue)->srp.tsk_mgmt;
 int tcm_type;
 u64 tag_to_abort = 0;
 int rc = 0;
 struct ibmvscsis_nexus *nexus;

 nexus = vscsi->tport.ibmv_nexus;

 cmd->rsp.sol_not = srp_tsk->sol_not;

 switch (srp_tsk->tsk_mgmt_func) {
 case 132:
  tcm_type = TMR_ABORT_TASK;
  tag_to_abort = be64_to_cpu(srp_tsk->task_tag);
  break;
 case 131:
  tcm_type = TMR_ABORT_TASK_SET;
  break;
 case 129:
  tcm_type = TMR_CLEAR_TASK_SET;
  break;
 case 128:
  tcm_type = TMR_LUN_RESET;
  break;
 case 130:
  tcm_type = TMR_CLEAR_ACA;
  break;
 default:
  dev_err(&vscsi->dev, "unknown task mgmt func %d\n",
   srp_tsk->tsk_mgmt_func);
  cmd->se_cmd.se_tmr_req->response =
   TMR_TASK_MGMT_FUNCTION_NOT_SUPPORTED;
  rc = -1;
  break;
 }

 if (!rc) {
  cmd->se_cmd.tag = be64_to_cpu(srp_tsk->tag);

  spin_lock_bh(&vscsi->intr_lock);
  list_add_tail(&cmd->list, &vscsi->active_q);
  spin_unlock_bh(&vscsi->intr_lock);

  srp_tsk->lun.scsi_lun[0] &= 0x3f;

  dev_dbg(&vscsi->dev, "calling submit_tmr, func %d\n",
   srp_tsk->tsk_mgmt_func);
  rc = target_submit_tmr(&cmd->se_cmd, nexus->se_sess, ((void*)0),
           scsilun_to_int(&srp_tsk->lun), srp_tsk,
           tcm_type, GFP_KERNEL, tag_to_abort, 0);
  if (rc) {
   dev_err(&vscsi->dev, "target_submit_tmr failed, rc %d\n",
    rc);
   spin_lock_bh(&vscsi->intr_lock);
   list_del(&cmd->list);
   spin_unlock_bh(&vscsi->intr_lock);
   cmd->se_cmd.se_tmr_req->response =
    TMR_FUNCTION_REJECTED;
  }
 }

 if (rc)
  transport_send_check_condition_and_sense(&cmd->se_cmd, 0, 0);
}
