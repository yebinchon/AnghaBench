
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr {int busy; struct qm_eqcr_entry* cursor; int available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int dummy; } ;


 int DPAA_ASSERT (int) ;
 int dpaa_zero (struct qm_eqcr_entry*) ;

__attribute__((used)) static inline struct qm_eqcr_entry *qm_eqcr_start_no_stash(struct qm_portal
         *portal)
{
 struct qm_eqcr *eqcr = &portal->eqcr;

 DPAA_ASSERT(!eqcr->busy);
 if (!eqcr->available)
  return ((void*)0);




 dpaa_zero(eqcr->cursor);
 return eqcr->cursor;
}
