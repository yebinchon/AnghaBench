
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dir; int nents; int sgl; struct sg_table* sgt; } ;
struct gntdev_dmabuf_attachment {int dir; int nents; int sgl; struct gntdev_dmabuf_attachment* sgt; } ;
struct dma_buf_attachment {struct sg_table* priv; int dev; } ;
struct dma_buf {int dummy; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_NONE ;
 int dma_unmap_sg_attrs (int ,int ,int ,int ,int ) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void dmabuf_exp_ops_detach(struct dma_buf *dma_buf,
      struct dma_buf_attachment *attach)
{
 struct gntdev_dmabuf_attachment *gntdev_dmabuf_attach = attach->priv;

 if (gntdev_dmabuf_attach) {
  struct sg_table *sgt = gntdev_dmabuf_attach->sgt;

  if (sgt) {
   if (gntdev_dmabuf_attach->dir != DMA_NONE)
    dma_unmap_sg_attrs(attach->dev, sgt->sgl,
         sgt->nents,
         gntdev_dmabuf_attach->dir,
         DMA_ATTR_SKIP_CPU_SYNC);
   sg_free_table(sgt);
  }

  kfree(sgt);
  kfree(gntdev_dmabuf_attach);
  attach->priv = ((void*)0);
 }
}
