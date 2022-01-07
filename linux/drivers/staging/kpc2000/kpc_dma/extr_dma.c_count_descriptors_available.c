
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kpc_dma_device {struct kpc_dma_descriptor* desc_completed; struct kpc_dma_descriptor* desc_next; } ;
struct kpc_dma_descriptor {struct kpc_dma_descriptor* Next; } ;


 int BUG_ON (int ) ;

int count_descriptors_available(struct kpc_dma_device *eng)
{
 u32 count = 0;
 struct kpc_dma_descriptor *cur = eng->desc_next;

 while (cur != eng->desc_completed) {
  BUG_ON(cur == ((void*)0));
  count++;
  cur = cur->Next;
 }
 return count;
}
