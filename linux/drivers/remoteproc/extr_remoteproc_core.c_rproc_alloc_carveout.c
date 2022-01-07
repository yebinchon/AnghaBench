
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rproc_mem_entry {int len; void* va; scalar_t__ dma; int da; int node; int flags; } ;
struct device {struct device* parent; } ;
struct rproc {int mappings; scalar_t__ domain; struct device dev; } ;
typedef scalar_t__ dma_addr_t ;


 int ENOMEM ;
 int FW_RSC_ADDR_ANY ;
 int GFP_KERNEL ;
 int HIGH_BITS_MASK ;
 int dev_dbg (struct device*,char*,void*,scalar_t__*,...) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 void* dma_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,int,void*,scalar_t__) ;
 int iommu_map (scalar_t__,int ,scalar_t__,int,int ) ;
 int kfree (struct rproc_mem_entry*) ;
 struct rproc_mem_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int rproc_alloc_carveout(struct rproc *rproc,
    struct rproc_mem_entry *mem)
{
 struct rproc_mem_entry *mapping = ((void*)0);
 struct device *dev = &rproc->dev;
 dma_addr_t dma;
 void *va;
 int ret;

 va = dma_alloc_coherent(dev->parent, mem->len, &dma, GFP_KERNEL);
 if (!va) {
  dev_err(dev->parent,
   "failed to allocate dma memory: len 0x%x\n", mem->len);
  return -ENOMEM;
 }

 dev_dbg(dev, "carveout va %pK, dma %pad, len 0x%x\n",
  va, &dma, mem->len);

 if (mem->da != FW_RSC_ADDR_ANY && !rproc->domain) {






  if (mem->da != (u32)dma)
   dev_warn(dev->parent,
     "Allocated carveout doesn't fit device address request\n");
 }
 if (mem->da != FW_RSC_ADDR_ANY && rproc->domain) {
  mapping = kzalloc(sizeof(*mapping), GFP_KERNEL);
  if (!mapping) {
   ret = -ENOMEM;
   goto dma_free;
  }

  ret = iommu_map(rproc->domain, mem->da, dma, mem->len,
    mem->flags);
  if (ret) {
   dev_err(dev, "iommu_map failed: %d\n", ret);
   goto free_mapping;
  }
  mapping->da = mem->da;
  mapping->len = mem->len;
  list_add_tail(&mapping->node, &rproc->mappings);

  dev_dbg(dev, "carveout mapped 0x%x to %pad\n",
   mem->da, &dma);
 }

 if (mem->da == FW_RSC_ADDR_ANY) {

  if ((u64)dma & HIGH_BITS_MASK)
   dev_warn(dev, "DMA address cast in 32bit to fit resource table format\n");

  mem->da = (u32)dma;
 }

 mem->dma = dma;
 mem->va = va;

 return 0;

free_mapping:
 kfree(mapping);
dma_free:
 dma_free_coherent(dev->parent, mem->len, va, dma);
 return ret;
}
