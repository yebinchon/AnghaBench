
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_portal {int dummy; } ;


 int QM_REG_CFG ;
 int qm_in (struct qm_portal*,int ) ;

__attribute__((used)) static inline unsigned int qm_eqcr_get_ci_stashing(struct qm_portal *portal)
{
 return (qm_in(portal, QM_REG_CFG) >> 28) & 0x7;
}
