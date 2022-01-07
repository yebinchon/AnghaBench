
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc_mem_entry {void* va; int len; int dma; } ;
struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int dev_err (struct device*,char*,int *,int ) ;
 void* ioremap_wc (int ,int ) ;

__attribute__((used)) static int st_rproc_mem_alloc(struct rproc *rproc,
         struct rproc_mem_entry *mem)
{
 struct device *dev = rproc->dev.parent;
 void *va;

 va = ioremap_wc(mem->dma, mem->len);
 if (!va) {
  dev_err(dev, "Unable to map memory region: %pa+%zx\n",
   &mem->dma, mem->len);
  return -ENOMEM;
 }


 mem->va = va;

 return 0;
}
