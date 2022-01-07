
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udc_request {unsigned int chain_len; struct udc_data_dma* td_data; } ;
struct udc_data_dma {scalar_t__ next; } ;
struct udc {int data_requests; } ;
typedef int dma_addr_t ;


 int DBG (struct udc*,char*,struct udc_request*) ;
 int dma_pool_free (int ,struct udc_data_dma*,int) ;
 struct udc_data_dma* phys_to_virt (int) ;

__attribute__((used)) static void udc_free_dma_chain(struct udc *dev, struct udc_request *req)
{
 struct udc_data_dma *td = req->td_data;
 unsigned int i;

 dma_addr_t addr_next = 0x00;
 dma_addr_t addr = (dma_addr_t)td->next;

 DBG(dev, "free chain req = %p\n", req);


 for (i = 1; i < req->chain_len; i++) {
  td = phys_to_virt(addr);
  addr_next = (dma_addr_t)td->next;
  dma_pool_free(dev->data_requests, td, addr);
  addr = addr_next;
 }
}
