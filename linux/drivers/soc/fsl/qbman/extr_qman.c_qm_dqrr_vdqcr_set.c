
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qm_portal {int dummy; } ;


 int QM_REG_DQRR_VDQCR ;
 int qm_out (struct qm_portal*,int ,int ) ;

__attribute__((used)) static inline void qm_dqrr_vdqcr_set(struct qm_portal *portal, u32 vdqcr)
{
 qm_out(portal, QM_REG_DQRR_VDQCR, vdqcr);
}
