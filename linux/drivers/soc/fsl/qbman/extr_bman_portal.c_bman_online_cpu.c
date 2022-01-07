
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_portal {int dummy; } ;
struct bm_portal_config {int irq; } ;


 struct bman_portal** affine_bportals ;
 struct bm_portal_config* bman_get_bm_portal_config (struct bman_portal*) ;
 int cpumask_of (unsigned int) ;
 int irq_set_affinity (int ,int ) ;

__attribute__((used)) static int bman_online_cpu(unsigned int cpu)
{
 struct bman_portal *p = affine_bportals[cpu];
 const struct bm_portal_config *pcfg;

 if (!p)
  return 0;

 pcfg = bman_get_bm_portal_config(p);
 if (!pcfg)
  return 0;

 irq_set_affinity(pcfg->irq, cpumask_of(cpu));
 return 0;
}
