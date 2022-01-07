
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_eqcr {int busy; int available; int ci; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int dummy; } ;


 int DPAA_ASSERT (int) ;
 int QM_CL_EQCR_CI_CENA ;
 int QM_EQCR_SIZE ;
 int dpaa_cyc_diff (int,int,int) ;
 int dpaa_zero (struct qm_eqcr_entry*) ;
 int qm_ce_in (struct qm_portal*,int ) ;

__attribute__((used)) static inline struct qm_eqcr_entry *qm_eqcr_start_stash(struct qm_portal
        *portal)
{
 struct qm_eqcr *eqcr = &portal->eqcr;
 u8 diff, old_ci;

 DPAA_ASSERT(!eqcr->busy);
 if (!eqcr->available) {
  old_ci = eqcr->ci;
  eqcr->ci = qm_ce_in(portal, QM_CL_EQCR_CI_CENA) &
      (QM_EQCR_SIZE - 1);
  diff = dpaa_cyc_diff(QM_EQCR_SIZE, old_ci, eqcr->ci);
  eqcr->available += diff;
  if (!diff)
   return ((void*)0);
 }



 dpaa_zero(eqcr->cursor);
 return eqcr->cursor;
}
