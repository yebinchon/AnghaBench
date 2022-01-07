
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {TYPE_4__* req; int vp_idx; TYPE_3__ vha_tgt; TYPE_2__* host; int host_no; } ;
struct qla_tgt {int tgt_list_entry; int sg_tablesize; int tgt_global_resets_count; int sess_works_list; int sess_work; int sess_work_lock; int del_sess_list; int waitQ; struct scsi_qla_host* vha; struct qla_hw_data* ha; int cpuid; int hint_elem; struct qla_qpair* qpair; struct qla_tgt* qphints; int lun_qpair_map; } ;
struct qla_qpair_hint {int tgt_list_entry; int sg_tablesize; int tgt_global_resets_count; int sess_works_list; int sess_work; int sess_work_lock; int del_sess_list; int waitQ; struct scsi_qla_host* vha; struct qla_hw_data* ha; int cpuid; int hint_elem; struct qla_qpair* qpair; struct qla_qpair_hint* qphints; int lun_qpair_map; } ;
struct qla_qpair {int cpuid; int qp_lock_ptr; int hints_list; } ;
struct TYPE_12__ {TYPE_5__* tgt_ops; } ;
struct qla_hw_data {int max_qpairs; TYPE_6__ tgt; struct qla_qpair** queue_pair_map; struct qla_qpair* base_qpair; } ;
struct TYPE_11__ {int (* add_target ) (struct scsi_qla_host*) ;} ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__* hostt; } ;
struct TYPE_7__ {int supported_mode; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IS_TGT_MODE_CAPABLE (struct qla_hw_data*) ;
 int MODE_TARGET ;
 int QLA_TGT_MAX_SG_24XX (scalar_t__) ;
 int QLA_TGT_MODE_ENABLED () ;
 int atomic_set (int *,int ) ;
 int btree_init64 (int *) ;
 int init_waitqueue_head (int *) ;
 struct qla_tgt* kcalloc (int,int,int ) ;
 int kfree (struct qla_tgt*) ;
 struct qla_tgt* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_tgt ;
 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla_tgt_glist ;
 int qla_tgt_mutex ;
 int qlt_sess_work_fn ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_qla_host*) ;

int qlt_add_target(struct qla_hw_data *ha, struct scsi_qla_host *base_vha)
{
 struct qla_tgt *tgt;
 int rc, i;
 struct qla_qpair_hint *h;

 if (!QLA_TGT_MODE_ENABLED())
  return 0;

 if (!IS_TGT_MODE_CAPABLE(ha)) {
  ql_log(ql_log_warn, base_vha, 0xe070,
      "This adapter does not support target mode.\n");
  return 0;
 }

 ql_dbg(ql_dbg_tgt, base_vha, 0xe03b,
     "Registering target for host %ld(%p).\n", base_vha->host_no, ha);

 BUG_ON(base_vha->vha_tgt.qla_tgt != ((void*)0));

 tgt = kzalloc(sizeof(struct qla_tgt), GFP_KERNEL);
 if (!tgt) {
  ql_dbg(ql_dbg_tgt, base_vha, 0xe066,
      "Unable to allocate struct qla_tgt\n");
  return -ENOMEM;
 }

 tgt->qphints = kcalloc(ha->max_qpairs + 1,
          sizeof(struct qla_qpair_hint),
          GFP_KERNEL);
 if (!tgt->qphints) {
  kfree(tgt);
  ql_log(ql_log_warn, base_vha, 0x0197,
      "Unable to allocate qpair hints.\n");
  return -ENOMEM;
 }

 if (!(base_vha->host->hostt->supported_mode & MODE_TARGET))
  base_vha->host->hostt->supported_mode |= MODE_TARGET;

 rc = btree_init64(&tgt->lun_qpair_map);
 if (rc) {
  kfree(tgt->qphints);
  kfree(tgt);
  ql_log(ql_log_info, base_vha, 0x0198,
   "Unable to initialize lun_qpair_map btree\n");
  return -EIO;
 }
 h = &tgt->qphints[0];
 h->qpair = ha->base_qpair;
 INIT_LIST_HEAD(&h->hint_elem);
 h->cpuid = ha->base_qpair->cpuid;
 list_add_tail(&h->hint_elem, &ha->base_qpair->hints_list);

 for (i = 0; i < ha->max_qpairs; i++) {
  unsigned long flags;

  struct qla_qpair *qpair = ha->queue_pair_map[i];

  h = &tgt->qphints[i + 1];
  INIT_LIST_HEAD(&h->hint_elem);
  if (qpair) {
   h->qpair = qpair;
   spin_lock_irqsave(qpair->qp_lock_ptr, flags);
   list_add_tail(&h->hint_elem, &qpair->hints_list);
   spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);
   h->cpuid = qpair->cpuid;
  }
 }

 tgt->ha = ha;
 tgt->vha = base_vha;
 init_waitqueue_head(&tgt->waitQ);
 INIT_LIST_HEAD(&tgt->del_sess_list);
 spin_lock_init(&tgt->sess_work_lock);
 INIT_WORK(&tgt->sess_work, qlt_sess_work_fn);
 INIT_LIST_HEAD(&tgt->sess_works_list);
 atomic_set(&tgt->tgt_global_resets_count, 0);

 base_vha->vha_tgt.qla_tgt = tgt;

 ql_dbg(ql_dbg_tgt, base_vha, 0xe067,
  "qla_target(%d): using 64 Bit PCI addressing",
  base_vha->vp_idx);

 tgt->sg_tablesize = QLA_TGT_MAX_SG_24XX(base_vha->req->length - 3);

 mutex_lock(&qla_tgt_mutex);
 list_add_tail(&tgt->tgt_list_entry, &qla_tgt_glist);
 mutex_unlock(&qla_tgt_mutex);

 if (ha->tgt.tgt_ops && ha->tgt.tgt_ops->add_target)
  ha->tgt.tgt_ops->add_target(base_vha);

 return 0;
}
