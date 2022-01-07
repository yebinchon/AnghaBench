
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {unsigned int desc_pool_cnt; int irq; int desc_pool; struct kpc_dma_descriptor* desc_pool_first; } ;
struct kpc_dma_descriptor {int DescNextDescPtr; struct kpc_dma_descriptor* Next; int MyDMAAddr; } ;
typedef int dma_addr_t ;


 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,struct kpc_dma_descriptor*,int ) ;
 int free_irq (int ,struct kpc_dma_device*) ;
 int stop_dma_engine (struct kpc_dma_device*) ;

void destroy_dma_engine(struct kpc_dma_device *eng)
{
 struct kpc_dma_descriptor *cur;
 dma_addr_t cur_handle;
 unsigned int i;

 stop_dma_engine(eng);

 cur = eng->desc_pool_first;
 cur_handle = eng->desc_pool_first->MyDMAAddr;

 for (i = 0 ; i < eng->desc_pool_cnt ; i++) {
  struct kpc_dma_descriptor *next = cur->Next;
  dma_addr_t next_handle = cur->DescNextDescPtr;

  dma_pool_free(eng->desc_pool, cur, cur_handle);
  cur_handle = next_handle;
  cur = next;
 }

 dma_pool_destroy(eng->desc_pool);

 free_irq(eng->irq, eng);
}
