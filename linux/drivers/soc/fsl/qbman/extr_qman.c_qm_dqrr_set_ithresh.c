
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qm_portal {int dummy; } ;


 int EINVAL ;
 scalar_t__ QMAN_DQRR_IT_MAX ;
 int QM_REG_DQRR_ITR ;
 int qm_out (struct qm_portal*,int ,scalar_t__) ;

__attribute__((used)) static inline int qm_dqrr_set_ithresh(struct qm_portal *portal, u8 ithresh)
{

 if (ithresh > QMAN_DQRR_IT_MAX)
  return -EINVAL;

 qm_out(portal, QM_REG_DQRR_ITR, ithresh);

 return 0;
}
