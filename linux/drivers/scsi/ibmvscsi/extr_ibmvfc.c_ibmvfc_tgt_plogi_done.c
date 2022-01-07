
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {void* port_name; int port_id; void* node_name; } ;
struct ibmvfc_target {int kref; int service_parms_change; int service_parms; int scsi_id; TYPE_3__ ids; } ;
struct TYPE_8__ {int port_name; int node_name; } ;
struct TYPE_6__ {int status; } ;
struct ibmvfc_port_login {int fc_explain; int fc_type; int error; int status; TYPE_4__ service_parms_change; TYPE_4__ service_parms; TYPE_2__ common; } ;
struct ibmvfc_host {int reinit; int work_wait_q; int discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_5__ {struct ibmvfc_port_login plogi; } ;


 int IBMVFC_DEFAULT_LOG_LEVEL ;




 int IBMVFC_TGT_ACTION_DEL_RPORT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int be16_to_cpu (int ) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;
 int ibmvfc_get_cmd_error (int,int) ;
 int ibmvfc_get_fc_type (int) ;
 int ibmvfc_get_ls_explain (int) ;
 int ibmvfc_init_tgt (struct ibmvfc_target*,int ) ;
 int ibmvfc_release_tgt ;
 int ibmvfc_retry_cmd (int,int) ;
 int ibmvfc_retry_tgt_init (struct ibmvfc_target*,int ) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_send_plogi ;
 int ibmvfc_tgt_send_prli ;
 int kref_put (int *,int ) ;
 int memcpy (int *,TYPE_4__*,int) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;
 int tgt_log (struct ibmvfc_target*,int,char*,int ,int,int,int ,int,int ,int,int) ;
 int wake_up (int *) ;
 void* wwn_to_u64 (int ) ;

__attribute__((used)) static void ibmvfc_tgt_plogi_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_target *tgt = evt->tgt;
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_port_login *rsp = &evt->xfer_iu->plogi;
 u32 status = be16_to_cpu(rsp->common.status);
 int level = IBMVFC_DEFAULT_LOG_LEVEL;

 vhost->discovery_threads--;
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);
 switch (status) {
 case 128:
  tgt_dbg(tgt, "Port Login succeeded\n");
  if (tgt->ids.port_name &&
      tgt->ids.port_name != wwn_to_u64(rsp->service_parms.port_name)) {
   vhost->reinit = 1;
   tgt_dbg(tgt, "Port re-init required\n");
   break;
  }
  tgt->ids.node_name = wwn_to_u64(rsp->service_parms.node_name);
  tgt->ids.port_name = wwn_to_u64(rsp->service_parms.port_name);
  tgt->ids.port_id = tgt->scsi_id;
  memcpy(&tgt->service_parms, &rsp->service_parms,
         sizeof(tgt->service_parms));
  memcpy(&tgt->service_parms_change, &rsp->service_parms_change,
         sizeof(tgt->service_parms_change));
  ibmvfc_init_tgt(tgt, ibmvfc_tgt_send_prli);
  break;
 case 130:
  break;
 case 131:
  ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_plogi);
  break;
 case 129:
 default:
  if (ibmvfc_retry_cmd(be16_to_cpu(rsp->status), be16_to_cpu(rsp->error)))
   level += ibmvfc_retry_tgt_init(tgt, ibmvfc_tgt_send_plogi);
  else
   ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

  tgt_log(tgt, level, "Port Login failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
   ibmvfc_get_cmd_error(be16_to_cpu(rsp->status), be16_to_cpu(rsp->error)),
          be16_to_cpu(rsp->status), be16_to_cpu(rsp->error),
   ibmvfc_get_fc_type(be16_to_cpu(rsp->fc_type)), be16_to_cpu(rsp->fc_type),
   ibmvfc_get_ls_explain(be16_to_cpu(rsp->fc_explain)), be16_to_cpu(rsp->fc_explain), status);
  break;
 }

 kref_put(&tgt->kref, ibmvfc_release_tgt);
 ibmvfc_free_event(evt);
 wake_up(&vhost->work_wait_q);
}
