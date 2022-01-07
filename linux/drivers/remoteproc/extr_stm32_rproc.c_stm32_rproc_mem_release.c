
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rproc_mem_entry {int va; int dma; } ;
struct TYPE_2__ {int parent; } ;
struct rproc {TYPE_1__ dev; } ;


 int dev_dbg (int ,char*,int *) ;
 int iounmap (int ) ;

__attribute__((used)) static int stm32_rproc_mem_release(struct rproc *rproc,
       struct rproc_mem_entry *mem)
{
 dev_dbg(rproc->dev.parent, "unmap memory: %pa\n", &mem->dma);
 iounmap(mem->va);

 return 0;
}
