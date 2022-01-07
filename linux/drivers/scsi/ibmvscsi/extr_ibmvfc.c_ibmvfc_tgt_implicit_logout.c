
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvfc_target {int kref; int scsi_id; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int length; void* opcode; void* version; } ;
struct ibmvfc_implicit_logout {int old_scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_3__ {struct ibmvfc_implicit_logout implicit_logout; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;


 int IBMVFC_IMPLICIT_LOGOUT ;
 int IBMVFC_MAD_FORMAT ;
 int IBMVFC_TGT_ACTION_INIT_WAIT ;
 int IBMVFC_TGT_ACTION_NONE ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int default_timeout ;
 scalar_t__ disc_threads ;
 struct ibmvfc_event* ibmvfc_get_event (struct ibmvfc_host*) ;
 int ibmvfc_init_event (struct ibmvfc_event*,int ,int ) ;
 int ibmvfc_release_tgt ;
 scalar_t__ ibmvfc_send_event (struct ibmvfc_event*,struct ibmvfc_host*,int ) ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int ibmvfc_tgt_implicit_logout_done ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int memset (struct ibmvfc_implicit_logout*,int ,int) ;
 int tgt_dbg (struct ibmvfc_target*,char*) ;

__attribute__((used)) static void ibmvfc_tgt_implicit_logout(struct ibmvfc_target *tgt)
{
 struct ibmvfc_implicit_logout *mad;
 struct ibmvfc_host *vhost = tgt->vhost;
 struct ibmvfc_event *evt;

 if (vhost->discovery_threads >= disc_threads)
  return;

 kref_get(&tgt->kref);
 evt = ibmvfc_get_event(vhost);
 vhost->discovery_threads++;
 ibmvfc_init_event(evt, ibmvfc_tgt_implicit_logout_done, IBMVFC_MAD_FORMAT);
 evt->tgt = tgt;
 mad = &evt->iu.implicit_logout;
 memset(mad, 0, sizeof(*mad));
 mad->common.version = cpu_to_be32(1);
 mad->common.opcode = cpu_to_be32(IBMVFC_IMPLICIT_LOGOUT);
 mad->common.length = cpu_to_be16(sizeof(*mad));
 mad->old_scsi_id = cpu_to_be64(tgt->scsi_id);

 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
 if (ibmvfc_send_event(evt, vhost, default_timeout)) {
  vhost->discovery_threads--;
  ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_NONE);
  kref_put(&tgt->kref, ibmvfc_release_tgt);
 } else
  tgt_dbg(tgt, "Sent Implicit Logout\n");
}
