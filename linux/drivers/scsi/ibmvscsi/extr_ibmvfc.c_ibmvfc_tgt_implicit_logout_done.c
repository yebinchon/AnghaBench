
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ibmvfc_target {scalar_t__ scsi_id; scalar_t__ new_scsi_id; int kref; } ;
struct TYPE_4__ {int status; } ;
struct ibmvfc_implicit_logout {TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ action; int work_wait_q; int discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_3__ {struct ibmvfc_implicit_logout implicit_logout; } ;


 scalar_t__ IBMVFC_HOST_ACTION_QUERY_TGTS ;
 scalar_t__ IBMVFC_HOST_ACTION_TGT_INIT ;



 int IBMVFC_TGT_ACTION_DEL_RPORT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int be16_to_cpu (int ) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_init_tgt (struct ibmvfc_target*,int ) ;
 int ibmvfc_release_tgt ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_send_plogi ;
 int kref_put (int *,int ) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;
 int tgt_err (struct ibmvfc_target*,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_tgt_implicit_logout_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_target *tgt = evt->tgt;
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_implicit_logout *rsp = &evt->xfer_iu->implicit_logout;
 u32 status = be16_to_cpu(rsp->common.status);

 vhost->discovery_threads--;
 ibmvfc_free_event(evt);
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);

 switch (status) {
 case 128:
  tgt_dbg(tgt, "Implicit Logout succeeded\n");
  break;
 case 130:
  kref_put(&tgt->kref, ibmvfc_release_tgt);
  wake_up(&vhost->work_wait_q);
  return;
 case 129:
 default:
  tgt_err(tgt, "Implicit Logout failed: rc=0x%02X\n", status);
  break;
 }

 if (vhost->action == IBMVFC_HOST_ACTION_TGT_INIT)
  ibmvfc_init_tgt(tgt, ibmvfc_tgt_send_plogi);
 else if (vhost->action == IBMVFC_HOST_ACTION_QUERY_TGTS &&
   tgt->scsi_id != tgt->new_scsi_id)
  ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
 kref_put(&tgt->kref, ibmvfc_release_tgt);
 wake_up(&vhost->work_wait_q);
}
