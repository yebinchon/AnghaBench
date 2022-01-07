
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_eqcr {int ithresh; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int QM_REG_EQCR_ITR ;
 int qm_out (struct qm_portal*,int ,int ) ;

__attribute__((used)) static inline void qm_eqcr_set_ithresh(struct qm_portal *portal, u8 ithresh)
{
 struct qm_eqcr *eqcr = &portal->eqcr;

 eqcr->ithresh = ithresh;
 qm_out(portal, QM_REG_EQCR_ITR, ithresh);
}
