
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qm_mr {scalar_t__ cmode; int ci; } ;
struct qm_portal {struct qm_mr mr; } ;


 int DPAA_ASSERT (int) ;
 int QM_MR_SIZE ;
 int QM_REG_MR_CI_CINH ;
 scalar_t__ qm_mr_cci ;
 int qm_out (struct qm_portal*,int ,int) ;

__attribute__((used)) static inline void qm_mr_cci_consume(struct qm_portal *portal, u8 num)
{
 struct qm_mr *mr = &portal->mr;

 DPAA_ASSERT(mr->cmode == qm_mr_cci);
 mr->ci = (mr->ci + num) & (QM_MR_SIZE - 1);
 qm_out(portal, QM_REG_MR_CI_CINH, mr->ci);
}
