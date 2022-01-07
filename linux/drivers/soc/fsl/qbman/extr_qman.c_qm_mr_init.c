
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ ce; } ;
struct qm_mr {int pi; int ci; int ithresh; int pmode; int cmode; int vbit; int fill; scalar_t__ ring; scalar_t__ cursor; } ;
struct qm_portal {TYPE_1__ addr; struct qm_mr mr; } ;
typedef enum qm_mr_pmode { ____Placeholder_qm_mr_pmode } qm_mr_pmode ;
typedef enum qm_mr_cmode { ____Placeholder_qm_mr_cmode } qm_mr_cmode ;


 scalar_t__ QM_CL_MR ;
 int QM_MR_SIZE ;
 int QM_MR_VERB_VBIT ;
 int QM_REG_CFG ;
 int QM_REG_MR_CI_CINH ;
 int QM_REG_MR_ITR ;
 int QM_REG_MR_PI_CINH ;
 int dpaa_cyc_diff (int,int,int) ;
 int qm_in (struct qm_portal*,int ) ;
 int qm_out (struct qm_portal*,int ,int) ;

__attribute__((used)) static inline int qm_mr_init(struct qm_portal *portal, enum qm_mr_pmode pmode,
        enum qm_mr_cmode cmode)
{
 struct qm_mr *mr = &portal->mr;
 u32 cfg;

 mr->ring = portal->addr.ce + QM_CL_MR;
 mr->pi = qm_in(portal, QM_REG_MR_PI_CINH) & (QM_MR_SIZE - 1);
 mr->ci = qm_in(portal, QM_REG_MR_CI_CINH) & (QM_MR_SIZE - 1);
 mr->cursor = mr->ring + mr->ci;
 mr->fill = dpaa_cyc_diff(QM_MR_SIZE, mr->ci, mr->pi);
 mr->vbit = (qm_in(portal, QM_REG_MR_PI_CINH) & QM_MR_SIZE)
  ? QM_MR_VERB_VBIT : 0;
 mr->ithresh = qm_in(portal, QM_REG_MR_ITR);




 cfg = (qm_in(portal, QM_REG_CFG) & 0xfffff0ff) |
       ((cmode & 1) << 8);
 qm_out(portal, QM_REG_CFG, cfg);
 return 0;
}
