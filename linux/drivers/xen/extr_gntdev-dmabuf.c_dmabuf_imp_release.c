
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gntdev_dmabuf_priv {int dummy; } ;
struct TYPE_3__ {scalar_t__ sgt; struct dma_buf_attachment* attach; int refs; } ;
struct TYPE_4__ {TYPE_1__ imp; } ;
struct gntdev_dmabuf {TYPE_2__ u; int nr_pages; } ;
struct dma_buf_attachment {struct dma_buf* dmabuf; } ;
struct dma_buf {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (struct gntdev_dmabuf*) ;
 int PTR_ERR (struct gntdev_dmabuf*) ;
 int dma_buf_detach (struct dma_buf*,struct dma_buf_attachment*) ;
 int dma_buf_put (struct dma_buf*) ;
 int dma_buf_unmap_attachment (struct dma_buf_attachment*,scalar_t__,int ) ;
 int dmabuf_imp_end_foreign_access (int ,int ) ;
 struct gntdev_dmabuf* dmabuf_imp_find_unlink (struct gntdev_dmabuf_priv*,int ) ;
 int dmabuf_imp_free_storage (struct gntdev_dmabuf*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int dmabuf_imp_release(struct gntdev_dmabuf_priv *priv, u32 fd)
{
 struct gntdev_dmabuf *gntdev_dmabuf;
 struct dma_buf_attachment *attach;
 struct dma_buf *dma_buf;

 gntdev_dmabuf = dmabuf_imp_find_unlink(priv, fd);
 if (IS_ERR(gntdev_dmabuf))
  return PTR_ERR(gntdev_dmabuf);

 pr_debug("Releasing DMA buffer with fd %d\n", fd);

 dmabuf_imp_end_foreign_access(gntdev_dmabuf->u.imp.refs,
          gntdev_dmabuf->nr_pages);

 attach = gntdev_dmabuf->u.imp.attach;

 if (gntdev_dmabuf->u.imp.sgt)
  dma_buf_unmap_attachment(attach, gntdev_dmabuf->u.imp.sgt,
      DMA_BIDIRECTIONAL);
 dma_buf = attach->dmabuf;
 dma_buf_detach(attach->dmabuf, attach);
 dma_buf_put(dma_buf);

 dmabuf_imp_free_storage(gntdev_dmabuf);
 return 0;
}
