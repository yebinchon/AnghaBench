
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qman_portal {int p; } ;


 int EINVAL ;
 scalar_t__ QMAN_ITP_MAX ;
 int QM_REG_ITPR ;
 int qm_out (int *,int ,scalar_t__) ;

int qman_portal_set_iperiod(struct qman_portal *portal, u32 iperiod)
{
 if (!portal || iperiod > QMAN_ITP_MAX)
  return -EINVAL;

 qm_out(&portal->p, QM_REG_ITPR, iperiod);

 return 0;
}
