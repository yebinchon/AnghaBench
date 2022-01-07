
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qm_mcr_querycgr {int dummy; } ;
union qm_mc_result {int verb; scalar_t__ result; struct qm_mcr_querycgr querycgr; } ;
struct TYPE_3__ {int cgid; } ;
union qm_mc_command {TYPE_1__ cgr; } ;
struct qman_portal {TYPE_2__* config; int p; } ;
struct qman_cgr {int cgrid; } ;
struct TYPE_4__ {int dev; } ;


 int DPAA_ASSERT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int QM_MCC_VERB_QUERYCGR ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 int dev_err (int ,char*,int ) ;
 struct qman_portal* get_affine_portal () ;
 int mcr_result_str (scalar_t__) ;
 int put_affine_portal () ;
 int qm_mc_commit (int *,int) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;

__attribute__((used)) static int qman_query_cgr(struct qman_cgr *cgr,
     struct qm_mcr_querycgr *cgrd)
{
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 struct qman_portal *p = get_affine_portal();
 int ret = 0;

 mcc = qm_mc_start(&p->p);
 mcc->cgr.cgid = cgr->cgrid;
 qm_mc_commit(&p->p, QM_MCC_VERB_QUERYCGR);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  ret = -ETIMEDOUT;
  goto out;
 }
 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_QUERYCGR);
 if (mcr->result == QM_MCR_RESULT_OK)
  *cgrd = mcr->querycgr;
 else {
  dev_err(p->config->dev, "QUERY_CGR failed: %s\n",
   mcr_result_str(mcr->result));
  ret = -EIO;
 }
out:
 put_affine_portal();
 return ret;
}
