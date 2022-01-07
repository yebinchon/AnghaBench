
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union qm_mc_result {int verb; } ;
struct qm_mc {int rridx; scalar_t__ state; int vbit; union qm_mc_result* rr; } ;
struct qm_portal {struct qm_mc mc; } ;


 int DPAA_ASSERT (int) ;
 int QM_MCC_VERB_VBIT ;
 int dpaa_invalidate_touch_ro (union qm_mc_result*) ;
 scalar_t__ qman_mc_hw ;
 scalar_t__ qman_mc_idle ;

__attribute__((used)) static inline union qm_mc_result *qm_mc_result(struct qm_portal *portal)
{
 struct qm_mc *mc = &portal->mc;
 union qm_mc_result *rr = mc->rr + mc->rridx;

 DPAA_ASSERT(mc->state == qman_mc_hw);





 if (!rr->verb) {
  dpaa_invalidate_touch_ro(rr);
  return ((void*)0);
 }
 mc->rridx ^= 1;
 mc->vbit ^= QM_MCC_VERB_VBIT;



 return rr;
}
