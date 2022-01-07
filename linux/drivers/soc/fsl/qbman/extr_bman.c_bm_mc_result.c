
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bm_mc_result {int verb; } ;
struct bm_mc {int rridx; scalar_t__ state; int vbit; union bm_mc_result* rr; } ;
struct bm_portal {struct bm_mc mc; } ;


 int BM_MCC_VERB_VBIT ;
 int DPAA_ASSERT (int) ;
 int dpaa_invalidate_touch_ro (union bm_mc_result*) ;
 scalar_t__ mc_hw ;
 scalar_t__ mc_idle ;

__attribute__((used)) static inline union bm_mc_result *bm_mc_result(struct bm_portal *portal)
{
 struct bm_mc *mc = &portal->mc;
 union bm_mc_result *rr = mc->rr + mc->rridx;

 DPAA_ASSERT(mc->state == mc_hw);





 if (!rr->verb) {
  dpaa_invalidate_touch_ro(rr);
  return ((void*)0);
 }
 mc->rridx ^= 1;
 mc->vbit ^= BM_MCC_VERB_VBIT;



 return rr;
}
