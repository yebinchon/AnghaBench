
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gr_udc {int dummy; } ;
struct gr_request {struct gr_dma_desc* last_desc; int * curr_desc; struct gr_dma_desc* first_desc; } ;
struct gr_dma_desc {struct gr_dma_desc* next_desc; } ;


 int gr_free_dma_desc (struct gr_udc*,struct gr_dma_desc*) ;

__attribute__((used)) static void gr_free_dma_desc_chain(struct gr_udc *dev, struct gr_request *req)
{
 struct gr_dma_desc *desc;
 struct gr_dma_desc *next;

 next = req->first_desc;
 if (!next)
  return;

 do {
  desc = next;
  next = desc->next_desc;
  gr_free_dma_desc(dev, desc);
 } while (desc != req->last_desc);

 req->first_desc = ((void*)0);
 req->curr_desc = ((void*)0);
 req->last_desc = ((void*)0);
}
