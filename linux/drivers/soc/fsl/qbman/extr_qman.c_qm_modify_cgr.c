
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qm_mc_result {int verb; scalar_t__ result; } ;
struct qm_mcc_initcgr {int cgid; } ;
union qm_mc_command {struct qm_mcc_initcgr initcgr; } ;
typedef int u8 ;
typedef int u32 ;
struct qman_portal {int p; } ;
struct qman_cgr {int cgrid; } ;


 int DPAA_ASSERT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int QMAN_CGR_FLAG_USE_INIT ;
 int QM_MCC_VERB_INITCGR ;
 int QM_MCC_VERB_MODIFYCGR ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;
 int qm_mc_commit (int *,int) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;

__attribute__((used)) static int qm_modify_cgr(struct qman_cgr *cgr, u32 flags,
    struct qm_mcc_initcgr *opts)
{
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 struct qman_portal *p = get_affine_portal();
 u8 verb = QM_MCC_VERB_MODIFYCGR;
 int ret = 0;

 mcc = qm_mc_start(&p->p);
 if (opts)
  mcc->initcgr = *opts;
 mcc->initcgr.cgid = cgr->cgrid;
 if (flags & QMAN_CGR_FLAG_USE_INIT)
  verb = QM_MCC_VERB_INITCGR;
 qm_mc_commit(&p->p, verb);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == verb);
 if (mcr->result != QM_MCR_RESULT_OK)
  ret = -EIO;

out:
 put_affine_portal();
 return ret;
}
