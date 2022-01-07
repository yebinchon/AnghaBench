
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_fqd {int dummy; } ;
struct TYPE_2__ {struct qm_fqd fqd; } ;
union qm_mc_result {int verb; scalar_t__ result; TYPE_1__ queryfq; } ;
union qm_mc_command {int fq; } ;
struct qman_portal {int p; } ;
struct qman_fq {int fqid; } ;


 int DPAA_ASSERT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int QM_MCC_VERB_QUERYFQ ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 int QM_MCR_VERB_QUERYFQ ;
 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;
 int qm_fqid_set (int *,int ) ;
 int qm_mc_commit (int *,int ) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;

int qman_query_fq(struct qman_fq *fq, struct qm_fqd *fqd)
{
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 struct qman_portal *p = get_affine_portal();
 int ret = 0;

 mcc = qm_mc_start(&p->p);
 qm_fqid_set(&mcc->fq, fq->fqid);
 qm_mc_commit(&p->p, QM_MCC_VERB_QUERYFQ);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ);
 if (mcr->result == QM_MCR_RESULT_OK)
  *fqd = mcr->queryfq.fqd;
 else
  ret = -EIO;
out:
 put_affine_portal();
 return ret;
}
