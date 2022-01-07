
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_mw {scalar_t__ alloc_size; scalar_t__ buff_size; int dma_addr; void* virt_addr; void* alloc_addr; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ALIGN (int ,size_t) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int ,size_t) ;
 void* PTR_ALIGN (void*,size_t) ;
 int dev_err (struct device*,char*,scalar_t__) ;
 void* dma_alloc_coherent (struct device*,scalar_t__,int *,int ) ;
 int dma_free_coherent (struct device*,scalar_t__,void*,int ) ;

__attribute__((used)) static int ntb_alloc_mw_buffer(struct ntb_transport_mw *mw,
          struct device *dma_dev, size_t align)
{
 dma_addr_t dma_addr;
 void *alloc_addr, *virt_addr;
 int rc;

 alloc_addr = dma_alloc_coherent(dma_dev, mw->alloc_size,
     &dma_addr, GFP_KERNEL);
 if (!alloc_addr) {
  dev_err(dma_dev, "Unable to alloc MW buff of size %zu\n",
   mw->alloc_size);
  return -ENOMEM;
 }
 virt_addr = alloc_addr;







 if (!IS_ALIGNED(dma_addr, align)) {
  if (mw->alloc_size > mw->buff_size) {
   virt_addr = PTR_ALIGN(alloc_addr, align);
   dma_addr = ALIGN(dma_addr, align);
  } else {
   rc = -ENOMEM;
   goto err;
  }
 }

 mw->alloc_addr = alloc_addr;
 mw->virt_addr = virt_addr;
 mw->dma_addr = dma_addr;

 return 0;

err:
 dma_free_coherent(dma_dev, mw->alloc_size, alloc_addr, dma_addr);

 return rc;
}
