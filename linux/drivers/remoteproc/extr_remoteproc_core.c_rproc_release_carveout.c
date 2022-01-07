
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_mem_entry {int dma; int va; int len; } ;
struct device {int parent; } ;
struct rproc {struct device dev; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int rproc_release_carveout(struct rproc *rproc,
      struct rproc_mem_entry *mem)
{
 struct device *dev = &rproc->dev;


 dma_free_coherent(dev->parent, mem->len, mem->va, mem->dma);
 return 0;
}
