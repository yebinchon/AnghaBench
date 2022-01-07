
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio_mem {int addr; int size; } ;
struct uio_info {struct uio_dmem_genirq_platdata* priv; } ;
struct uio_dmem_genirq_platdata {int dmem_region_start; int alloc_lock; scalar_t__* dmem_region_vaddr; TYPE_2__* pdev; TYPE_1__* uioinfo; int refcnt; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct uio_mem* mem; } ;


 int DMEM_MAP_ERROR ;
 size_t MAX_UIO_MAPS ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int uio_dmem_genirq_release(struct uio_info *info, struct inode *inode)
{
 struct uio_dmem_genirq_platdata *priv = info->priv;
 struct uio_mem *uiomem;
 int dmem_region = priv->dmem_region_start;


 pm_runtime_put_sync(&priv->pdev->dev);

 uiomem = &priv->uioinfo->mem[priv->dmem_region_start];

 mutex_lock(&priv->alloc_lock);

 priv->refcnt--;
 while (!priv->refcnt && uiomem < &priv->uioinfo->mem[MAX_UIO_MAPS]) {
  if (!uiomem->size)
   break;
  if (priv->dmem_region_vaddr[dmem_region]) {
   dma_free_coherent(&priv->pdev->dev, uiomem->size,
     priv->dmem_region_vaddr[dmem_region],
     uiomem->addr);
  }
  uiomem->addr = DMEM_MAP_ERROR;
  ++dmem_region;
  ++uiomem;
 }

 mutex_unlock(&priv->alloc_lock);
 return 0;
}
