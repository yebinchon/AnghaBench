
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qman_portal {int p; } ;


 int qm_eqcr_cce_prefetch (int *) ;
 int qm_eqcr_cce_update (int *) ;

__attribute__((used)) static void update_eqcr_ci(struct qman_portal *p, u8 avail)
{
 if (avail)
  qm_eqcr_cce_prefetch(&p->p);
 else
  qm_eqcr_cce_update(&p->p);
}
