
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {struct qm_portal_config* config; int p; int cgrs; } ;
struct qm_portal_config {int irq; } ;


 int free_irq (int ,struct qman_portal*) ;
 int kfree (int ) ;
 int qm_dqrr_finish (int *) ;
 int qm_dqrr_sdqcr_set (int *,int ) ;
 int qm_eqcr_cce_update (int *) ;
 int qm_eqcr_finish (int *) ;
 int qm_mc_finish (int *) ;
 int qm_mr_finish (int *) ;

__attribute__((used)) static void qman_destroy_portal(struct qman_portal *qm)
{
 const struct qm_portal_config *pcfg;


 qm_dqrr_sdqcr_set(&qm->p, 0);
 qm_eqcr_cce_update(&qm->p);
 qm_eqcr_cce_update(&qm->p);
 pcfg = qm->config;

 free_irq(pcfg->irq, qm);

 kfree(qm->cgrs);
 qm_mc_finish(&qm->p);
 qm_mr_finish(&qm->p);
 qm_dqrr_finish(&qm->p);
 qm_eqcr_finish(&qm->p);

 qm->config = ((void*)0);
}
