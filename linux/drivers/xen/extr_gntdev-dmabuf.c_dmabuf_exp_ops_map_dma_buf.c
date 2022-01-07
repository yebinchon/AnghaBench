
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct gntdev_dmabuf_attachment {int dir; struct sg_table* sgt; } ;
struct gntdev_dmabuf {int nr_pages; int pages; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; struct gntdev_dmabuf_attachment* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct gntdev_dmabuf* priv; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_NONE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct sg_table* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int dma_map_sg_attrs (int ,int ,int ,int,int ) ;
 struct sg_table* dmabuf_pages_to_sgt (int ,int ) ;
 int kfree (struct sg_table*) ;
 int pr_debug (char*,int ,...) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static struct sg_table *
dmabuf_exp_ops_map_dma_buf(struct dma_buf_attachment *attach,
      enum dma_data_direction dir)
{
 struct gntdev_dmabuf_attachment *gntdev_dmabuf_attach = attach->priv;
 struct gntdev_dmabuf *gntdev_dmabuf = attach->dmabuf->priv;
 struct sg_table *sgt;

 pr_debug("Mapping %d pages for dev %p\n", gntdev_dmabuf->nr_pages,
   attach->dev);

 if (dir == DMA_NONE || !gntdev_dmabuf_attach)
  return ERR_PTR(-EINVAL);


 if (gntdev_dmabuf_attach->dir == dir)
  return gntdev_dmabuf_attach->sgt;





 if (gntdev_dmabuf_attach->dir != DMA_NONE)
  return ERR_PTR(-EBUSY);

 sgt = dmabuf_pages_to_sgt(gntdev_dmabuf->pages,
      gntdev_dmabuf->nr_pages);
 if (!IS_ERR(sgt)) {
  if (!dma_map_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
          DMA_ATTR_SKIP_CPU_SYNC)) {
   sg_free_table(sgt);
   kfree(sgt);
   sgt = ERR_PTR(-ENOMEM);
  } else {
   gntdev_dmabuf_attach->sgt = sgt;
   gntdev_dmabuf_attach->dir = dir;
  }
 }
 if (IS_ERR(sgt))
  pr_debug("Failed to map sg table for dev %p\n", attach->dev);
 return sgt;
}
