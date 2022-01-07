
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union bm_mc_result {int dummy; } bm_mc_result ;
typedef int u8 ;
struct bm_mc {int rridx; scalar_t__ state; int vbit; TYPE_1__* cr; union bm_mc_result* rr; } ;
struct bm_portal {struct bm_mc mc; } ;
struct TYPE_2__ {int _ncw_verb; } ;


 int DPAA_ASSERT (int) ;
 int dma_wmb () ;
 int dpaa_flush (TYPE_1__*) ;
 int dpaa_invalidate_touch_ro (union bm_mc_result*) ;
 scalar_t__ mc_hw ;
 scalar_t__ mc_user ;

__attribute__((used)) static inline void bm_mc_commit(struct bm_portal *portal, u8 myverb)
{
 struct bm_mc *mc = &portal->mc;
 union bm_mc_result *rr = mc->rr + mc->rridx;

 DPAA_ASSERT(mc->state == mc_user);
 dma_wmb();
 mc->cr->_ncw_verb = myverb | mc->vbit;
 dpaa_flush(mc->cr);
 dpaa_invalidate_touch_ro(rr);



}
