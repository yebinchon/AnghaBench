
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_eqcr {int ci; int available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int QM_CL_EQCR_CI_CENA ;
 int QM_EQCR_SIZE ;
 int dpaa_cyc_diff (int,int,int) ;
 int qm_ce_in (struct qm_portal*,int ) ;
 int qm_cl_invalidate (struct qm_portal*,int ) ;

__attribute__((used)) static inline u8 qm_eqcr_cce_update(struct qm_portal *portal)
{
 struct qm_eqcr *eqcr = &portal->eqcr;
 u8 diff, old_ci = eqcr->ci;

 eqcr->ci = qm_ce_in(portal, QM_CL_EQCR_CI_CENA) & (QM_EQCR_SIZE - 1);
 qm_cl_invalidate(portal, QM_CL_EQCR_CI_CENA);
 diff = dpaa_cyc_diff(QM_EQCR_SIZE, old_ci, eqcr->ci);
 eqcr->available += diff;
 return diff;
}
