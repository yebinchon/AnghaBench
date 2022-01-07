
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union qm_mc_result {int dummy; } qm_mc_result ;
typedef int u8 ;
struct qm_mc {int rridx; scalar_t__ state; int vbit; TYPE_1__* cr; union qm_mc_result* rr; } ;
struct qm_portal {struct qm_mc mc; } ;
struct TYPE_2__ {int _ncw_verb; } ;


 int DPAA_ASSERT (int) ;
 int dma_wmb () ;
 int dpaa_flush (TYPE_1__*) ;
 int dpaa_invalidate_touch_ro (union qm_mc_result*) ;
 scalar_t__ qman_mc_hw ;
 scalar_t__ qman_mc_user ;

__attribute__((used)) static inline void qm_mc_commit(struct qm_portal *portal, u8 myverb)
{
 struct qm_mc *mc = &portal->mc;
 union qm_mc_result *rr = mc->rr + mc->rridx;

 DPAA_ASSERT(mc->state == qman_mc_user);
 dma_wmb();
 mc->cr->_ncw_verb = myverb | mc->vbit;
 dpaa_flush(mc->cr);
 dpaa_invalidate_touch_ro(rr);



}
