
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union qm_mc_result {int verb; scalar_t__ result; } ;
union qm_mc_command {int fq; } ;
struct qman_portal {TYPE_1__* config; int p; } ;
struct qman_fq {scalar_t__ state; int fqid; } ;
struct TYPE_2__ {int dev; } ;


 int DPAA_ASSERT (int) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_FQ_STATE_CHANGING ;
 int QM_MCC_VERB_ALTER_SCHED ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_ALTER_SCHED ;
 int QM_MCR_VERB_MASK ;
 int dev_err (int ,char*) ;
 scalar_t__ fq_isset (struct qman_fq*,int ) ;
 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;
 int qm_fqid_set (int *,int ) ;
 int qm_mc_commit (int *,int ) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;
 scalar_t__ qman_fq_state_parked ;
 scalar_t__ qman_fq_state_sched ;

int qman_schedule_fq(struct qman_fq *fq)
{
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 struct qman_portal *p;
 int ret = 0;

 if (fq->state != qman_fq_state_parked)
  return -EINVAL;





 p = get_affine_portal();
 if (fq_isset(fq, QMAN_FQ_STATE_CHANGING) ||
     fq->state != qman_fq_state_parked) {
  ret = -EBUSY;
  goto out;
 }
 mcc = qm_mc_start(&p->p);
 qm_fqid_set(&mcc->fq, fq->fqid);
 qm_mc_commit(&p->p, QM_MCC_VERB_ALTER_SCHED);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  dev_err(p->config->dev, "ALTER_SCHED timeout\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_ALTER_SCHED);
 if (mcr->result != QM_MCR_RESULT_OK) {
  ret = -EIO;
  goto out;
 }
 fq->state = qman_fq_state_sched;
out:
 put_affine_portal();
 return ret;
}
