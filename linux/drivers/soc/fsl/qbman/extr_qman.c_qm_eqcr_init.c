
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ ce; } ;
struct qm_eqcr {int ci; int ithresh; int pmode; scalar_t__ busy; scalar_t__ available; int vbit; scalar_t__ ring; scalar_t__ cursor; } ;
struct qm_portal {TYPE_1__ addr; struct qm_eqcr eqcr; } ;
typedef enum qm_eqcr_pmode { ____Placeholder_qm_eqcr_pmode } qm_eqcr_pmode ;


 scalar_t__ QM_CL_EQCR ;
 int QM_CL_EQCR_CI_CENA ;
 int QM_EQCR_SIZE ;
 int QM_EQCR_VERB_VBIT ;
 int QM_REG_CFG ;
 int QM_REG_EQCR_CI_CINH ;
 int QM_REG_EQCR_ITR ;
 int QM_REG_EQCR_PI_CINH ;
 scalar_t__ dpaa_cyc_diff (int,int,int) ;
 int qm_cl_invalidate (struct qm_portal*,int ) ;
 int qm_in (struct qm_portal*,int ) ;
 int qm_out (struct qm_portal*,int ,int) ;

__attribute__((used)) static inline int qm_eqcr_init(struct qm_portal *portal,
    enum qm_eqcr_pmode pmode,
    unsigned int eq_stash_thresh,
    int eq_stash_prio)
{
 struct qm_eqcr *eqcr = &portal->eqcr;
 u32 cfg;
 u8 pi;

 eqcr->ring = portal->addr.ce + QM_CL_EQCR;
 eqcr->ci = qm_in(portal, QM_REG_EQCR_CI_CINH) & (QM_EQCR_SIZE - 1);
 qm_cl_invalidate(portal, QM_CL_EQCR_CI_CENA);
 pi = qm_in(portal, QM_REG_EQCR_PI_CINH) & (QM_EQCR_SIZE - 1);
 eqcr->cursor = eqcr->ring + pi;
 eqcr->vbit = (qm_in(portal, QM_REG_EQCR_PI_CINH) & QM_EQCR_SIZE) ?
       QM_EQCR_VERB_VBIT : 0;
 eqcr->available = QM_EQCR_SIZE - 1 -
     dpaa_cyc_diff(QM_EQCR_SIZE, eqcr->ci, pi);
 eqcr->ithresh = qm_in(portal, QM_REG_EQCR_ITR);




 cfg = (qm_in(portal, QM_REG_CFG) & 0x00ffffff) |
       (eq_stash_thresh << 28) |
       (eq_stash_prio << 26) |
       ((pmode & 0x3) << 24);
 qm_out(portal, QM_REG_CFG, cfg);
 return 0;
}
