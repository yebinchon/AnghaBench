
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma; int ptr; } ;
struct ci_hw_ep {TYPE_1__ qh; scalar_t__ pending_td; } ;
struct ci_hdrc {int hw_ep_max; int qh_pool; struct ci_hw_ep* ci_hw_ep; } ;


 int dma_pool_free (int ,int ,int ) ;
 int free_pending_td (struct ci_hw_ep*) ;

__attribute__((used)) static void destroy_eps(struct ci_hdrc *ci)
{
 int i;

 for (i = 0; i < ci->hw_ep_max; i++) {
  struct ci_hw_ep *hwep = &ci->ci_hw_ep[i];

  if (hwep->pending_td)
   free_pending_td(hwep);
  dma_pool_free(ci->qh_pool, hwep->qh.ptr, hwep->qh.dma);
 }
}
