
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_vde_cache_entry {int list; TYPE_2__* a; int dma_dir; int sgt; int iova; TYPE_1__* vde; int refcnt; } ;
struct dma_buf {int dummy; } ;
struct TYPE_5__ {struct dma_buf* dmabuf; } ;
struct TYPE_4__ {scalar_t__ domain; } ;


 int WARN_ON_ONCE (int ) ;
 int dma_buf_detach (struct dma_buf*,TYPE_2__*) ;
 int dma_buf_put (struct dma_buf*) ;
 int dma_buf_unmap_attachment (TYPE_2__*,int ,int ) ;
 int kfree (struct tegra_vde_cache_entry*) ;
 int list_del (int *) ;
 int tegra_vde_iommu_unmap (TYPE_1__*,int ) ;

__attribute__((used)) static void tegra_vde_release_entry(struct tegra_vde_cache_entry *entry)
{
 struct dma_buf *dmabuf = entry->a->dmabuf;

 WARN_ON_ONCE(entry->refcnt);

 if (entry->vde->domain)
  tegra_vde_iommu_unmap(entry->vde, entry->iova);

 dma_buf_unmap_attachment(entry->a, entry->sgt, entry->dma_dir);
 dma_buf_detach(dmabuf, entry->a);
 dma_buf_put(dmabuf);

 list_del(&entry->list);
 kfree(entry);
}
