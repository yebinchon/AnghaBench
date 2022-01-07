
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct se_cmd {TYPE_2__* se_tmr_req; } ;
struct vscsibk_pend {struct se_cmd se_cmd; int tmr_done; int * sense_buffer; TYPE_1__* v2p; } ;
struct scsiback_tpg {struct scsiback_nexus* tpg_nexus; } ;
struct scsiback_nexus {int tvn_se_sess; } ;
typedef enum tcm_tmreq_table { ____Placeholder_tcm_tmreq_table } tcm_tmreq_table ;
struct TYPE_4__ {scalar_t__ response; } ;
struct TYPE_3__ {int lun; struct scsiback_tpg* tpg; } ;


 int FAILED ;
 int GFP_KERNEL ;
 int SUCCESS ;
 int TARGET_SCF_ACK_KREF ;
 scalar_t__ TMR_FUNCTION_COMPLETE ;
 int init_completion (int *) ;
 int scsiback_do_resp_with_sense (int *,int,int ,struct vscsibk_pend*) ;
 int target_submit_tmr (struct se_cmd*,int ,int *,int ,int *,int,int ,int,int ) ;
 int transport_generic_free_cmd (struct se_cmd*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void scsiback_device_action(struct vscsibk_pend *pending_req,
 enum tcm_tmreq_table act, int tag)
{
 struct scsiback_tpg *tpg = pending_req->v2p->tpg;
 struct scsiback_nexus *nexus = tpg->tpg_nexus;
 struct se_cmd *se_cmd = &pending_req->se_cmd;
 u64 unpacked_lun = pending_req->v2p->lun;
 int rc, err = FAILED;

 init_completion(&pending_req->tmr_done);

 rc = target_submit_tmr(&pending_req->se_cmd, nexus->tvn_se_sess,
          &pending_req->sense_buffer[0],
          unpacked_lun, ((void*)0), act, GFP_KERNEL,
          tag, TARGET_SCF_ACK_KREF);
 if (rc)
  goto err;

 wait_for_completion(&pending_req->tmr_done);

 err = (se_cmd->se_tmr_req->response == TMR_FUNCTION_COMPLETE) ?
  SUCCESS : FAILED;

 scsiback_do_resp_with_sense(((void*)0), err, 0, pending_req);
 transport_generic_free_cmd(&pending_req->se_cmd, 0);
 return;

err:
 scsiback_do_resp_with_sense(((void*)0), err, 0, pending_req);
}
