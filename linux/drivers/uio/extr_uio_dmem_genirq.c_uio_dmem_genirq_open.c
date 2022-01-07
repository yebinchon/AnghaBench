
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio_mem {int addr; int size; } ;
struct uio_info {struct uio_dmem_genirq_platdata* priv; } ;
struct uio_dmem_genirq_platdata {int dmem_region_start; TYPE_2__* pdev; int alloc_lock; int refcnt; void** dmem_region_vaddr; TYPE_1__* uioinfo; } ;
struct inode {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct uio_mem* mem; } ;


 int DMEM_MAP_ERROR ;
 int GFP_KERNEL ;
 size_t MAX_UIO_MAPS ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int uio_dmem_genirq_open(struct uio_info *info, struct inode *inode)
{
 struct uio_dmem_genirq_platdata *priv = info->priv;
 struct uio_mem *uiomem;
 int ret = 0;
 int dmem_region = priv->dmem_region_start;

 uiomem = &priv->uioinfo->mem[priv->dmem_region_start];

 mutex_lock(&priv->alloc_lock);
 while (!priv->refcnt && uiomem < &priv->uioinfo->mem[MAX_UIO_MAPS]) {
  void *addr;
  if (!uiomem->size)
   break;

  addr = dma_alloc_coherent(&priv->pdev->dev, uiomem->size,
    (dma_addr_t *)&uiomem->addr, GFP_KERNEL);
  if (!addr) {
   uiomem->addr = DMEM_MAP_ERROR;
  }
  priv->dmem_region_vaddr[dmem_region++] = addr;
  ++uiomem;
 }
 priv->refcnt++;

 mutex_unlock(&priv->alloc_lock);

 pm_runtime_get_sync(&priv->pdev->dev);
 return ret;
}
