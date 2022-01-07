
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qm_eqcr {scalar_t__ ci; int cursor; int busy; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int DPAA_ASSERT (int) ;
 int QM_EQCR_SIZE ;
 int QM_REG_EQCR_CI_CINH ;
 int QM_REG_EQCR_PI_CINH ;
 scalar_t__ eqcr_ptr2idx (int ) ;
 int pr_crit (char*) ;
 int qm_in (struct qm_portal*,int ) ;

__attribute__((used)) static inline void qm_eqcr_finish(struct qm_portal *portal)
{
 struct qm_eqcr *eqcr = &portal->eqcr;
 u8 pi = qm_in(portal, QM_REG_EQCR_PI_CINH) & (QM_EQCR_SIZE - 1);
 u8 ci = qm_in(portal, QM_REG_EQCR_CI_CINH) & (QM_EQCR_SIZE - 1);

 DPAA_ASSERT(!eqcr->busy);
 if (pi != eqcr_ptr2idx(eqcr->cursor))
  pr_crit("losing uncommitted EQCR entries\n");
 if (ci != eqcr->ci)
  pr_crit("missing existing EQCR completions\n");
 if (eqcr->ci != eqcr_ptr2idx(eqcr->cursor))
  pr_crit("EQCR destroyed unquiesced\n");
}
