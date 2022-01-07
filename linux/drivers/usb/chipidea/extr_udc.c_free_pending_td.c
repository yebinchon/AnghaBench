
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td_node {int dma; int ptr; } ;
struct ci_hw_ep {struct td_node* pending_td; int td_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct td_node*) ;

__attribute__((used)) static void free_pending_td(struct ci_hw_ep *hwep)
{
 struct td_node *pending = hwep->pending_td;

 dma_pool_free(hwep->td_pool, pending->ptr, pending->dma);
 hwep->pending_td = ((void*)0);
 kfree(pending);
}
