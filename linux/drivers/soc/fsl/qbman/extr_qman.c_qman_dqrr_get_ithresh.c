
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qman_portal {int p; } ;


 int QM_REG_DQRR_ITR ;
 int qm_in (int *,int ) ;

void qman_dqrr_get_ithresh(struct qman_portal *portal, u8 *ithresh)
{
 if (portal && ithresh)
  *ithresh = qm_in(&portal->p, QM_REG_DQRR_ITR);
}
