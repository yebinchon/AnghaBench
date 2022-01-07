
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_portal {int dummy; } ;


 int QM_REG_MR_ITR ;
 int qm_out (struct qm_portal*,int ,int ) ;

__attribute__((used)) static inline void qm_mr_set_ithresh(struct qm_portal *portal, u8 ithresh)
{
 qm_out(portal, QM_REG_MR_ITR, ithresh);
}
