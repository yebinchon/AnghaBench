
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_portal {int p; } ;


 int QM_REG_ITPR ;
 int qm_in (int *,int ) ;

void qman_portal_get_iperiod(struct qman_portal *portal, u32 *iperiod)
{
 if (portal && iperiod)
  *iperiod = qm_in(&portal->p, QM_REG_ITPR);
}
