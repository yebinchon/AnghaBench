
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int fake_ptr_to_pci (void*) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *fake_alloc_consistent(struct device *parent, size_t size,
  dma_addr_t *dma)
{
 void *alloc = kmalloc(size, GFP_KERNEL);

 if (alloc)
  *dma = fake_ptr_to_pci(alloc);

 return alloc;
}
