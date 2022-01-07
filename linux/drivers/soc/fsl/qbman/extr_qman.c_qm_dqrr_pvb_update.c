
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {int pi; scalar_t__ pmode; int vbit; int fill; int ring; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;
struct qm_dqrr_entry {int verb; } ;


 int DPAA_ASSERT (int) ;
 int QM_DQRR_SIZE ;
 int QM_DQRR_VERB_VBIT ;
 int dpaa_invalidate_touch_ro (struct qm_dqrr_entry*) ;
 struct qm_dqrr_entry* qm_cl (int ,int) ;
 scalar_t__ qm_dqrr_pvb ;

__attribute__((used)) static inline void qm_dqrr_pvb_update(struct qm_portal *portal)
{
 struct qm_dqrr *dqrr = &portal->dqrr;
 struct qm_dqrr_entry *res = qm_cl(dqrr->ring, dqrr->pi);

 DPAA_ASSERT(dqrr->pmode == qm_dqrr_pvb);





 dpaa_invalidate_touch_ro(res);

 if ((res->verb & QM_DQRR_VERB_VBIT) == dqrr->vbit) {
  dqrr->pi = (dqrr->pi + 1) & (QM_DQRR_SIZE - 1);
  if (!dqrr->pi)
   dqrr->vbit ^= QM_DQRR_VERB_VBIT;
  dqrr->fill++;
 }
}
