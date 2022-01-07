
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ibmvfc_target {int kref; int scsi_id; int new_scsi_id; } ;
struct TYPE_4__ {int status; } ;
struct ibmvfc_query_tgt {int fc_explain; int fc_type; int error; int status; int scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {int work_wait_q; int discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_3__ {struct ibmvfc_query_tgt query_tgt; } ;


 int IBMVFC_DEFAULT_LOG_LEVEL ;
 int IBMVFC_FABRIC_MAPPED ;




 int IBMVFC_PORT_NAME_NOT_REG ;
 int IBMVFC_TGT_ACTION_DEL_RPORT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int IBMVFC_UNABLE_TO_PERFORM_REQ ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_get_cmd_error (int,int) ;
 int ibmvfc_get_fc_type (int) ;
 int ibmvfc_get_gs_explain (int) ;
 int ibmvfc_init_tgt (struct ibmvfc_target*,int ) ;
 int ibmvfc_release_tgt ;
 int ibmvfc_retry_cmd (int,int) ;
 int ibmvfc_retry_tgt_init (struct ibmvfc_target*,int ) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_adisc ;
 int ibmvfc_tgt_implicit_logout ;
 int ibmvfc_tgt_query_target ;
 int kref_put (int *,int ) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;
 int tgt_log (struct ibmvfc_target*,int,char*,int ,int,int,int ,int,int ,int,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_tgt_query_target_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_target *tgt = evt->tgt;
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_query_tgt *rsp = &evt->xfer_iu->query_tgt;
 u32 status = be16_to_cpu(rsp->common.status);
 int level = IBMVFC_DEFAULT_LOG_LEVEL;

 vhost->discovery_threads--;
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);
 switch (status) {
 case 128:
  tgt_dbg(tgt, "Query Target succeeded\n");
  tgt->new_scsi_id = be64_to_cpu(rsp->scsi_id);
  if (be64_to_cpu(rsp->scsi_id) != tgt->scsi_id)
   ibmvfc_init_tgt(tgt, ibmvfc_tgt_implicit_logout);
  else
   ibmvfc_init_tgt(tgt, ibmvfc_tgt_adisc);
  break;
 case 130:
  break;
 case 131:
  ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_query_target);
  break;
 case 129:
 default:
  if ((be16_to_cpu(rsp->status) & IBMVFC_FABRIC_MAPPED) == IBMVFC_FABRIC_MAPPED &&
      be16_to_cpu(rsp->error) == IBMVFC_UNABLE_TO_PERFORM_REQ &&
      be16_to_cpu(rsp->fc_explain) == IBMVFC_PORT_NAME_NOT_REG)
   ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
  else if (ibmvfc_retry_cmd(be16_to_cpu(rsp->status), be16_to_cpu(rsp->error)))
   level += ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_query_target);
  else
   ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

  tgt_log(tgt, level, "Query Target failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
   ibmvfc_get_cmd_error(be16_to_cpu(rsp->status), be16_to_cpu(rsp->error)),
   be16_to_cpu(rsp->status), be16_to_cpu(rsp->error),
   ibmvfc_get_fc_type(be16_to_cpu(rsp->fc_type)), be16_to_cpu(rsp->fc_type),
   ibmvfc_get_gs_explain(be16_to_cpu(rsp->fc_explain)), be16_to_cpu(rsp->fc_explain),
   status);
  break;
 }

 kref_put(&tgt->kref, ibmvfc_release_tgt);
 ibmvfc_free_event(evt);
 wake_up(&vhost->work_wait_q);
}
