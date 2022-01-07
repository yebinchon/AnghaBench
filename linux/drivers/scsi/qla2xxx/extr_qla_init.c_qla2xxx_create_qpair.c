
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_5__ {int qpairs_available; } ;
struct scsi_qla_host {TYPE_1__ flags; int qp_list; struct qla_hw_data* hw; } ;
struct qla_qpair {int use_shadow_reg; size_t id; int vp_idx; int difdix_supported; int online; int qp_list_elem; struct qla_msix_entry* msix; TYPE_4__* rsp; int srb_mempool; int req; int reqq_start_iocbs; int pdev; int enable_explicit_conf; int enable_class_2; int chip_reset; int hints_list; int fw_started; int qp_lock; int * qp_lock_ptr; struct scsi_qla_host* vha; struct qla_hw_data* hw; } ;
struct qla_msix_entry {int in_use; size_t vector; } ;
struct TYPE_6__ {int fw_started; int msix_enabled; } ;
struct qla_hw_data {int fw_attributes; scalar_t__ max_qpairs; scalar_t__ num_qpairs; int msix_count; int mq_lock; int qpair_qid_map; struct qla_qpair** queue_pair_map; int * req_q_map; TYPE_4__** rsp_q_map; int pdev; struct qla_msix_entry* msix_entries; TYPE_3__* base_qpair; TYPE_2__ flags; } ;
struct TYPE_8__ {struct qla_qpair* qpair; int req; } ;
struct TYPE_7__ {int enable_explicit_conf; int enable_class_2; int chip_reset; } ;


 int BIT_4 ;
 int BIT_6 ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 scalar_t__ IS_SHADOW_REG_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ IS_T10_PI_CAPABLE (struct qla_hw_data*) ;
 int SRB_MIN_REQ ;
 int clear_bit (size_t,int ) ;
 size_t find_first_zero_bit (int ,scalar_t__) ;
 int kfree (struct qla_qpair*) ;
 struct qla_qpair* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mempool_create_slab_pool (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ql2xenabledif ;
 scalar_t__ ql2xmqsupport ;
 scalar_t__ ql2xnvmeenable ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,size_t) ;
 int ql_dbg_init ;
 int ql_dbg_multiq ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_warn ;
 int qla25xx_create_req_que (struct qla_hw_data*,int ,int,int ,int,int,int) ;
 int qla25xx_create_rsp_que (struct qla_hw_data*,int ,int ,int ,struct qla_qpair*,int) ;
 int qla25xx_delete_rsp_que (struct scsi_qla_host*,TYPE_4__*) ;
 int qla_83xx_start_iocbs ;
 int qla_cpu_update (struct qla_qpair*,int ) ;
 int set_bit (size_t,int ) ;
 int smp_processor_id () ;
 int spin_lock_init (int *) ;
 int srb_cachep ;

struct qla_qpair *qla2xxx_create_qpair(struct scsi_qla_host *vha, int qos,
 int vp_idx, bool startqp)
{
 int rsp_id = 0;
 int req_id = 0;
 int i;
 struct qla_hw_data *ha = vha->hw;
 uint16_t qpair_id = 0;
 struct qla_qpair *qpair = ((void*)0);
 struct qla_msix_entry *msix;

 if (!(ha->fw_attributes & BIT_6) || !ha->flags.msix_enabled) {
  ql_log(ql_log_warn, vha, 0x00181,
      "FW/Driver is not multi-queue capable.\n");
  return ((void*)0);
 }

 if (ql2xmqsupport || ql2xnvmeenable) {
  qpair = kzalloc(sizeof(struct qla_qpair), GFP_KERNEL);
  if (qpair == ((void*)0)) {
   ql_log(ql_log_warn, vha, 0x0182,
       "Failed to allocate memory for queue pair.\n");
   return ((void*)0);
  }

  qpair->hw = vha->hw;
  qpair->vha = vha;
  qpair->qp_lock_ptr = &qpair->qp_lock;
  spin_lock_init(&qpair->qp_lock);
  qpair->use_shadow_reg = IS_SHADOW_REG_CAPABLE(ha) ? 1 : 0;


  mutex_lock(&ha->mq_lock);
  qpair_id = find_first_zero_bit(ha->qpair_qid_map, ha->max_qpairs);
  if (ha->num_qpairs >= ha->max_qpairs) {
   mutex_unlock(&ha->mq_lock);
   ql_log(ql_log_warn, vha, 0x0183,
       "No resources to create additional q pair.\n");
   goto fail_qid_map;
  }
  ha->num_qpairs++;
  set_bit(qpair_id, ha->qpair_qid_map);
  ha->queue_pair_map[qpair_id] = qpair;
  qpair->id = qpair_id;
  qpair->vp_idx = vp_idx;
  qpair->fw_started = ha->flags.fw_started;
  INIT_LIST_HEAD(&qpair->hints_list);
  qpair->chip_reset = ha->base_qpair->chip_reset;
  qpair->enable_class_2 = ha->base_qpair->enable_class_2;
  qpair->enable_explicit_conf =
      ha->base_qpair->enable_explicit_conf;

  for (i = 0; i < ha->msix_count; i++) {
   msix = &ha->msix_entries[i];
   if (msix->in_use)
    continue;
   qpair->msix = msix;
   ql_dbg(ql_dbg_multiq, vha, 0xc00f,
       "Vector %x selected for qpair\n", msix->vector);
   break;
  }
  if (!qpair->msix) {
   ql_log(ql_log_warn, vha, 0x0184,
       "Out of MSI-X vectors!.\n");
   goto fail_msix;
  }

  qpair->msix->in_use = 1;
  list_add_tail(&qpair->qp_list_elem, &vha->qp_list);
  qpair->pdev = ha->pdev;
  if (IS_QLA27XX(ha) || IS_QLA83XX(ha) || IS_QLA28XX(ha))
   qpair->reqq_start_iocbs = qla_83xx_start_iocbs;

  mutex_unlock(&ha->mq_lock);


  rsp_id = qla25xx_create_rsp_que(ha, 0, 0, 0, qpair, startqp);
  if (!rsp_id) {
   ql_log(ql_log_warn, vha, 0x0185,
       "Failed to create response queue.\n");
   goto fail_rsp;
  }

  qpair->rsp = ha->rsp_q_map[rsp_id];


  req_id = qla25xx_create_req_que(ha, 0, vp_idx, 0, rsp_id, qos,
      startqp);
  if (!req_id) {
   ql_log(ql_log_warn, vha, 0x0186,
       "Failed to create request queue.\n");
   goto fail_req;
  }

  qpair->req = ha->req_q_map[req_id];
  qpair->rsp->req = qpair->req;
  qpair->rsp->qpair = qpair;

  qla_cpu_update(qpair, smp_processor_id());

  if (IS_T10_PI_CAPABLE(ha) && ql2xenabledif) {
   if (ha->fw_attributes & BIT_4)
    qpair->difdix_supported = 1;
  }

  qpair->srb_mempool = mempool_create_slab_pool(SRB_MIN_REQ, srb_cachep);
  if (!qpair->srb_mempool) {
   ql_log(ql_log_warn, vha, 0xd036,
       "Failed to create srb mempool for qpair %d\n",
       qpair->id);
   goto fail_mempool;
  }


  qpair->online = 1;

  if (!vha->flags.qpairs_available)
   vha->flags.qpairs_available = 1;

  ql_dbg(ql_dbg_multiq, vha, 0xc00d,
      "Request/Response queue pair created, id %d\n",
      qpair->id);
  ql_dbg(ql_dbg_init, vha, 0x0187,
      "Request/Response queue pair created, id %d\n",
      qpair->id);
 }
 return qpair;

fail_mempool:
fail_req:
 qla25xx_delete_rsp_que(vha, qpair->rsp);
fail_rsp:
 mutex_lock(&ha->mq_lock);
 qpair->msix->in_use = 0;
 list_del(&qpair->qp_list_elem);
 if (list_empty(&vha->qp_list))
  vha->flags.qpairs_available = 0;
fail_msix:
 ha->queue_pair_map[qpair_id] = ((void*)0);
 clear_bit(qpair_id, ha->qpair_qid_map);
 ha->num_qpairs--;
 mutex_unlock(&ha->mq_lock);
fail_qid_map:
 kfree(qpair);
 return ((void*)0);
}
