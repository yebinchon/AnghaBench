
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qm_portal_config {int dummy; } ;
struct TYPE_2__ {scalar_t__ ce; } ;
struct qm_dqrr {int pi; int ci; int ithresh; int dmode; int pmode; int cmode; scalar_t__ ring; int vbit; int fill; scalar_t__ cursor; } ;
struct qm_portal {TYPE_1__ addr; struct qm_dqrr dqrr; } ;
typedef enum qm_dqrr_pmode { ____Placeholder_qm_dqrr_pmode } qm_dqrr_pmode ;
typedef enum qm_dqrr_dmode { ____Placeholder_qm_dqrr_dmode } qm_dqrr_dmode ;
typedef enum qm_dqrr_cmode { ____Placeholder_qm_dqrr_cmode } qm_dqrr_cmode ;


 scalar_t__ QM_CL_DQRR ;
 int QM_DQRR_SIZE ;
 int QM_DQRR_VERB_VBIT ;
 int QM_REG_CFG ;
 int QM_REG_DQRR_CI_CINH ;
 int QM_REG_DQRR_ITR ;
 int QM_REG_DQRR_PDQCR ;
 int QM_REG_DQRR_PI_CINH ;
 int QM_REG_DQRR_SDQCR ;
 int QM_REG_DQRR_VDQCR ;
 int dpaa_cyc_diff (int,int,int) ;
 int dpaa_invalidate (int ) ;
 int qm_cl (scalar_t__,int) ;
 int qm_dqrr_set_maxfill (struct qm_portal*,int) ;
 int qm_in (struct qm_portal*,int ) ;
 int qm_out (struct qm_portal*,int ,int) ;

__attribute__((used)) static inline int qm_dqrr_init(struct qm_portal *portal,
          const struct qm_portal_config *config,
          enum qm_dqrr_dmode dmode,
          enum qm_dqrr_pmode pmode,
          enum qm_dqrr_cmode cmode, u8 max_fill)
{
 struct qm_dqrr *dqrr = &portal->dqrr;
 u32 cfg;


 qm_out(portal, QM_REG_DQRR_SDQCR, 0);
 qm_out(portal, QM_REG_DQRR_VDQCR, 0);
 qm_out(portal, QM_REG_DQRR_PDQCR, 0);
 dqrr->ring = portal->addr.ce + QM_CL_DQRR;
 dqrr->pi = qm_in(portal, QM_REG_DQRR_PI_CINH) & (QM_DQRR_SIZE - 1);
 dqrr->ci = qm_in(portal, QM_REG_DQRR_CI_CINH) & (QM_DQRR_SIZE - 1);
 dqrr->cursor = dqrr->ring + dqrr->ci;
 dqrr->fill = dpaa_cyc_diff(QM_DQRR_SIZE, dqrr->ci, dqrr->pi);
 dqrr->vbit = (qm_in(portal, QM_REG_DQRR_PI_CINH) & QM_DQRR_SIZE) ?
   QM_DQRR_VERB_VBIT : 0;
 dqrr->ithresh = qm_in(portal, QM_REG_DQRR_ITR);






 for (cfg = 0; cfg < QM_DQRR_SIZE; cfg++)
  dpaa_invalidate(qm_cl(dqrr->ring, cfg));
 cfg = (qm_in(portal, QM_REG_CFG) & 0xff000f00) |
  ((max_fill & (QM_DQRR_SIZE - 1)) << 20) |
  ((dmode & 1) << 18) |
  ((cmode & 3) << 16) |
  0xa0 |
  (0 ? 0x40 : 0) |
  (0 ? 0x10 : 0);
 qm_out(portal, QM_REG_CFG, cfg);
 qm_dqrr_set_maxfill(portal, max_fill);
 return 0;
}
