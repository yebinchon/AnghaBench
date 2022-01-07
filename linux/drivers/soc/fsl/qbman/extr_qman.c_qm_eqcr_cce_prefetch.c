
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_portal {int dummy; } ;


 int QM_CL_EQCR_CI_CENA ;
 int qm_cl_touch_ro (struct qm_portal*,int ) ;

__attribute__((used)) static inline void qm_eqcr_cce_prefetch(struct qm_portal *portal)
{
 qm_cl_touch_ro(portal, QM_CL_EQCR_CI_CENA);
}
