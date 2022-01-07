
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {struct qm_portal_config* config; } ;
struct qm_portal_config {int cpu; } ;


 int affine_mask ;
 int affine_mask_lock ;
 int cpumask_clear_cpu (int,int *) ;
 struct qman_portal* get_affine_portal () ;
 int put_affine_portal () ;
 int qman_destroy_portal (struct qman_portal*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

const struct qm_portal_config *qman_destroy_affine_portal(void)
{
 struct qman_portal *qm = get_affine_portal();
 const struct qm_portal_config *pcfg;
 int cpu;

 pcfg = qm->config;
 cpu = pcfg->cpu;

 qman_destroy_portal(qm);

 spin_lock(&affine_mask_lock);
 cpumask_clear_cpu(cpu, &affine_mask);
 spin_unlock(&affine_mask_lock);
 put_affine_portal();
 return pcfg;
}
