
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_dmabuf_attachment {int dir; } ;
struct dma_buf_attachment {struct gntdev_dmabuf_attachment* priv; } ;
struct dma_buf {int dummy; } ;


 int DMA_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct gntdev_dmabuf_attachment* kzalloc (int,int ) ;

__attribute__((used)) static int dmabuf_exp_ops_attach(struct dma_buf *dma_buf,
     struct dma_buf_attachment *attach)
{
 struct gntdev_dmabuf_attachment *gntdev_dmabuf_attach;

 gntdev_dmabuf_attach = kzalloc(sizeof(*gntdev_dmabuf_attach),
           GFP_KERNEL);
 if (!gntdev_dmabuf_attach)
  return -ENOMEM;

 gntdev_dmabuf_attach->dir = DMA_NONE;
 attach->priv = gntdev_dmabuf_attach;
 return 0;
}
