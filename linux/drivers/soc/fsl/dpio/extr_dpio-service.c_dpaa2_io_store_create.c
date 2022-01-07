
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_io_store {unsigned int max; struct device* dev; scalar_t__ idx; struct dpaa2_io_store* alloced_addr; int paddr; int vaddr; } ;
struct dpaa2_dq {int dummy; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int PTR_ALIGN (struct dpaa2_io_store*,int) ;
 int dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree (struct dpaa2_io_store*) ;
 struct dpaa2_io_store* kmalloc (int,int ) ;
 struct dpaa2_io_store* kzalloc (size_t,int ) ;

struct dpaa2_io_store *dpaa2_io_store_create(unsigned int max_frames,
          struct device *dev)
{
 struct dpaa2_io_store *ret;
 size_t size;

 if (!max_frames || (max_frames > 16))
  return ((void*)0);

 ret = kmalloc(sizeof(*ret), GFP_KERNEL);
 if (!ret)
  return ((void*)0);

 ret->max = max_frames;
 size = max_frames * sizeof(struct dpaa2_dq) + 64;
 ret->alloced_addr = kzalloc(size, GFP_KERNEL);
 if (!ret->alloced_addr) {
  kfree(ret);
  return ((void*)0);
 }

 ret->vaddr = PTR_ALIGN(ret->alloced_addr, 64);
 ret->paddr = dma_map_single(dev, ret->vaddr,
        sizeof(struct dpaa2_dq) * max_frames,
        DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, ret->paddr)) {
  kfree(ret->alloced_addr);
  kfree(ret);
  return ((void*)0);
 }

 ret->idx = 0;
 ret->dev = dev;

 return ret;
}
