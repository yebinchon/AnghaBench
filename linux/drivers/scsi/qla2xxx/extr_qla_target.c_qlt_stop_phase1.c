
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tgt_mutex; } ;
struct scsi_qla_host {TYPE_1__ vha_tgt; struct qla_tgt* host_no; } ;
struct qla_tgt {int tgt_stop; int waitQ; struct scsi_qla_host* sess_count; int sess_work_lock; int sess_works_list; scalar_t__ tgt_stopped; struct qla_hw_data* ha; struct scsi_qla_host* vha; } ;
struct TYPE_4__ {int host_shutting_down; } ;
struct qla_hw_data {int optrom_mutex; TYPE_2__ flags; } ;


 int EPERM ;
 int HZ ;
 int flush_scheduled_work () ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_tgt_mgt ;
 scalar_t__ qla_dual_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_tgt_mode_enabled (struct scsi_qla_host*) ;
 int qla_tgt_mutex ;
 int qlt_clear_tgt_db (struct qla_tgt*) ;
 int qlt_disable_vha (struct scsi_qla_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_tgt_sess_count (struct qla_tgt*) ;
 int wait_event_timeout (int ,int ,int) ;

int qlt_stop_phase1(struct qla_tgt *tgt)
{
 struct scsi_qla_host *vha = tgt->vha;
 struct qla_hw_data *ha = tgt->ha;
 unsigned long flags;

 mutex_lock(&ha->optrom_mutex);
 mutex_lock(&qla_tgt_mutex);

 if (tgt->tgt_stop || tgt->tgt_stopped) {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf04e,
      "Already in tgt->tgt_stop or tgt_stopped state\n");
  mutex_unlock(&qla_tgt_mutex);
  mutex_unlock(&ha->optrom_mutex);
  return -EPERM;
 }

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xe003, "Stopping target for host %ld(%p)\n",
     vha->host_no, vha);




 mutex_lock(&vha->vha_tgt.tgt_mutex);
 tgt->tgt_stop = 1;
 qlt_clear_tgt_db(tgt);
 mutex_unlock(&vha->vha_tgt.tgt_mutex);
 mutex_unlock(&qla_tgt_mutex);

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xf009,
     "Waiting for sess works (tgt %p)", tgt);
 spin_lock_irqsave(&tgt->sess_work_lock, flags);
 while (!list_empty(&tgt->sess_works_list)) {
  spin_unlock_irqrestore(&tgt->sess_work_lock, flags);
  flush_scheduled_work();
  spin_lock_irqsave(&tgt->sess_work_lock, flags);
 }
 spin_unlock_irqrestore(&tgt->sess_work_lock, flags);

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xf00a,
     "Waiting for tgt %p: sess_count=%d\n", tgt, tgt->sess_count);

 wait_event_timeout(tgt->waitQ, test_tgt_sess_count(tgt), 10*HZ);


 if (!ha->flags.host_shutting_down &&
     (qla_tgt_mode_enabled(vha) || qla_dual_mode_enabled(vha)))
  qlt_disable_vha(vha);


 wait_event_timeout(tgt->waitQ, test_tgt_sess_count(tgt), 10*HZ);
 mutex_unlock(&ha->optrom_mutex);

 return 0;
}
