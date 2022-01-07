
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_portal {int dummy; } ;


 int QM_DQRR_SIZE ;
 int QM_REG_CFG ;
 int qm_in (struct qm_portal*,int ) ;
 int qm_out (struct qm_portal*,int ,int) ;

__attribute__((used)) static inline void qm_dqrr_set_maxfill(struct qm_portal *portal, u8 mf)
{
 qm_out(portal, QM_REG_CFG, (qm_in(portal, QM_REG_CFG) & 0xff0fffff) |
       ((mf & (QM_DQRR_SIZE - 1)) << 20));
}
