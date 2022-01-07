
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union qm_mc_result {scalar_t__ verb; scalar_t__ result; } ;
struct TYPE_5__ {int cgid; int fq_ctrl; int context_a; int context_b; } ;
struct qm_mcc_initfq {TYPE_2__ fqd; int we_mask; scalar_t__ count; } ;
union qm_mc_command {struct qm_mcc_initfq initfq; int fq; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct qman_portal {TYPE_1__* config; int p; } ;
struct qman_fq {scalar_t__ state; int cgr_groupid; int fqid; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; int channel; } ;


 int DMA_TO_DEVICE ;
 int DPAA_ASSERT (int) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_FLAG_TO_DCPORTAL ;
 int QMAN_FQ_STATE_CGR_EN ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_INITFQ_FLAG_LOCAL ;
 int QMAN_INITFQ_FLAG_SCHED ;
 int QM_FQCTRL_CGE ;
 int QM_INITFQ_WE_CGID ;
 int QM_INITFQ_WE_CONTEXTA ;
 int QM_INITFQ_WE_CONTEXTB ;
 int QM_INITFQ_WE_DESTWQ ;
 int QM_INITFQ_WE_FQCTRL ;
 int QM_INITFQ_WE_OAC ;
 int QM_INITFQ_WE_TDTHRESH ;
 scalar_t__ QM_MCC_VERB_INITFQ_PARKED ;
 scalar_t__ QM_MCC_VERB_INITFQ_SCHED ;
 scalar_t__ QM_MCR_RESULT_OK ;
 scalar_t__ QM_MCR_VERB_MASK ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,struct qman_fq*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int fq_clear (struct qman_fq*,int ) ;
 scalar_t__ fq_isclear (struct qman_fq*,int ) ;
 scalar_t__ fq_isset (struct qman_fq*,int ) ;
 int fq_set (struct qman_fq*,int ) ;
 int fq_to_tag (struct qman_fq*) ;
 struct qman_portal* get_affine_portal () ;
 int memset (int *,int ,int) ;
 int put_affine_portal () ;
 int qm_fqd_set_destwq (TYPE_2__*,int ,int) ;
 int qm_fqd_stashing_set64 (TYPE_2__*,int ) ;
 int qm_fqid_set (int *,int ) ;
 int qm_mc_commit (int *,scalar_t__) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;
 struct qman_portal* qman_dma_portal ;
 scalar_t__ qman_fq_state_oos ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_sched ;

int qman_init_fq(struct qman_fq *fq, u32 flags, struct qm_mcc_initfq *opts)
{
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 struct qman_portal *p;
 u8 res, myverb;
 int ret = 0;

 myverb = (flags & QMAN_INITFQ_FLAG_SCHED)
  ? QM_MCC_VERB_INITFQ_SCHED : QM_MCC_VERB_INITFQ_PARKED;

 if (fq->state != qman_fq_state_oos &&
     fq->state != qman_fq_state_parked)
  return -EINVAL;




 if (opts && (be16_to_cpu(opts->we_mask) & QM_INITFQ_WE_OAC)) {

  if (be16_to_cpu(opts->we_mask) & QM_INITFQ_WE_TDTHRESH)
   return -EINVAL;
 }

 p = get_affine_portal();
 if (fq_isset(fq, QMAN_FQ_STATE_CHANGING) ||
     (fq->state != qman_fq_state_oos &&
      fq->state != qman_fq_state_parked)) {
  ret = -EBUSY;
  goto out;
 }
 mcc = qm_mc_start(&p->p);
 if (opts)
  mcc->initfq = *opts;
 qm_fqid_set(&mcc->fq, fq->fqid);
 mcc->initfq.count = 0;





 if (fq_isclear(fq, QMAN_FQ_FLAG_TO_DCPORTAL)) {
  dma_addr_t phys_fq;

  mcc->initfq.we_mask |= cpu_to_be16(QM_INITFQ_WE_CONTEXTB);
  mcc->initfq.fqd.context_b = cpu_to_be32(fq_to_tag(fq));




  if (!(be16_to_cpu(mcc->initfq.we_mask) &
      QM_INITFQ_WE_CONTEXTA)) {
   mcc->initfq.we_mask |=
    cpu_to_be16(QM_INITFQ_WE_CONTEXTA);
   memset(&mcc->initfq.fqd.context_a, 0,
    sizeof(mcc->initfq.fqd.context_a));
  } else {
   struct qman_portal *p = qman_dma_portal;

   phys_fq = dma_map_single(p->config->dev, fq,
       sizeof(*fq), DMA_TO_DEVICE);
   if (dma_mapping_error(p->config->dev, phys_fq)) {
    dev_err(p->config->dev, "dma_mapping failed\n");
    ret = -EIO;
    goto out;
   }

   qm_fqd_stashing_set64(&mcc->initfq.fqd, phys_fq);
  }
 }
 if (flags & QMAN_INITFQ_FLAG_LOCAL) {
  int wq = 0;

  if (!(be16_to_cpu(mcc->initfq.we_mask) &
      QM_INITFQ_WE_DESTWQ)) {
   mcc->initfq.we_mask |=
    cpu_to_be16(QM_INITFQ_WE_DESTWQ);
   wq = 4;
  }
  qm_fqd_set_destwq(&mcc->initfq.fqd, p->config->channel, wq);
 }
 qm_mc_commit(&p->p, myverb);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  dev_err(p->config->dev, "MCR timeout\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == myverb);
 res = mcr->result;
 if (res != QM_MCR_RESULT_OK) {
  ret = -EIO;
  goto out;
 }
 if (opts) {
  if (be16_to_cpu(opts->we_mask) & QM_INITFQ_WE_FQCTRL) {
   if (be16_to_cpu(opts->fqd.fq_ctrl) & QM_FQCTRL_CGE)
    fq_set(fq, QMAN_FQ_STATE_CGR_EN);
   else
    fq_clear(fq, QMAN_FQ_STATE_CGR_EN);
  }
  if (be16_to_cpu(opts->we_mask) & QM_INITFQ_WE_CGID)
   fq->cgr_groupid = opts->fqd.cgid;
 }
 fq->state = (flags & QMAN_INITFQ_FLAG_SCHED) ?
  qman_fq_state_sched : qman_fq_state_parked;

out:
 put_affine_portal();
 return ret;
}
