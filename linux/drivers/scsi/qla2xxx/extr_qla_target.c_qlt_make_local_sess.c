
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int tgt_mutex; TYPE_1__* qla_tgt; } ;
struct scsi_qla_host {int vp_idx; TYPE_2__ vha_tgt; } ;
struct fc_port {int dummy; } ;
struct TYPE_11__ {int cmd_count; int id; } ;
typedef TYPE_3__ qlt_port_logo_t ;
typedef int fc_port_t ;
struct TYPE_12__ {int domain; int area; int al_pa; } ;
typedef TYPE_4__ be_id_t ;
struct TYPE_9__ {int tgt_global_resets_count; } ;


 int ENOENT ;
 int atomic_read (int *) ;
 int be_to_port_id (TYPE_4__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,int,int) ;
 int ql_dbg_tgt_mgt ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int,int,int,int) ;
 int ql_log_info ;
 int qla24xx_get_loop_id (struct scsi_qla_host*,TYPE_4__,int *) ;
 struct fc_port* qlt_create_sess (struct scsi_qla_host*,int *,int) ;
 int * qlt_get_port_database (struct scsi_qla_host*,int ) ;
 int qlt_send_first_logo (struct scsi_qla_host*,TYPE_3__*) ;

__attribute__((used)) static struct fc_port *qlt_make_local_sess(struct scsi_qla_host *vha,
        be_id_t s_id)
{
 struct fc_port *sess = ((void*)0);
 fc_port_t *fcport = ((void*)0);
 int rc, global_resets;
 uint16_t loop_id = 0;

 if (s_id.domain == 0xFF && s_id.area == 0xFC) {




  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf042,
      "Unable to find initiator with S_ID %x:%x:%x",
      s_id.domain, s_id.area, s_id.al_pa);
  return ((void*)0);
 }

 mutex_lock(&vha->vha_tgt.tgt_mutex);

retry:
 global_resets =
     atomic_read(&vha->vha_tgt.qla_tgt->tgt_global_resets_count);

 rc = qla24xx_get_loop_id(vha, s_id, &loop_id);
 if (rc != 0) {
  mutex_unlock(&vha->vha_tgt.tgt_mutex);

  ql_log(ql_log_info, vha, 0xf071,
      "qla_target(%d): Unable to find "
      "initiator with S_ID %x:%x:%x",
      vha->vp_idx, s_id.domain, s_id.area, s_id.al_pa);

  if (rc == -ENOENT) {
   qlt_port_logo_t logo;

   logo.id = be_to_port_id(s_id);
   logo.cmd_count = 1;
   qlt_send_first_logo(vha, &logo);
  }

  return ((void*)0);
 }

 fcport = qlt_get_port_database(vha, loop_id);
 if (!fcport) {
  mutex_unlock(&vha->vha_tgt.tgt_mutex);
  return ((void*)0);
 }

 if (global_resets !=
     atomic_read(&vha->vha_tgt.qla_tgt->tgt_global_resets_count)) {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf043,
      "qla_target(%d): global reset during session discovery "
      "(counter was %d, new %d), retrying", vha->vp_idx,
      global_resets,
      atomic_read(&vha->vha_tgt.
   qla_tgt->tgt_global_resets_count));
  goto retry;
 }

 sess = qlt_create_sess(vha, fcport, 1);

 mutex_unlock(&vha->vha_tgt.tgt_mutex);

 return sess;
}
