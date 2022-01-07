
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;
struct qm_portal_config {int irq; } ;


 struct qman_portal** affine_portals ;
 int cpumask_of (unsigned int) ;
 int irq_set_affinity (int ,int ) ;
 struct qm_portal_config* qman_get_qm_portal_config (struct qman_portal*) ;
 int qman_portal_update_sdest (struct qm_portal_config const*,unsigned int) ;

__attribute__((used)) static int qman_online_cpu(unsigned int cpu)
{
 struct qman_portal *p;
 const struct qm_portal_config *pcfg;

 p = affine_portals[cpu];
 if (p) {
  pcfg = qman_get_qm_portal_config(p);
  if (pcfg) {
   irq_set_affinity(pcfg->irq, cpumask_of(cpu));
   qman_portal_update_sdest(pcfg, cpu);
  }
 }
 return 0;
}
