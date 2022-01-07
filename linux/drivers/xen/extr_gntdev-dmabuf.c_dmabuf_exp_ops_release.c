
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gntdev_dmabuf_priv {int lock; } ;
struct TYPE_3__ {int refcount; int map; int priv; } ;
struct TYPE_4__ {TYPE_1__ exp; } ;
struct gntdev_dmabuf {TYPE_2__ u; struct gntdev_dmabuf_priv* priv; } ;
struct dma_buf {struct gntdev_dmabuf* priv; } ;


 int dmabuf_exp_release ;
 int dmabuf_exp_remove_map (int ,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dmabuf_exp_ops_release(struct dma_buf *dma_buf)
{
 struct gntdev_dmabuf *gntdev_dmabuf = dma_buf->priv;
 struct gntdev_dmabuf_priv *priv = gntdev_dmabuf->priv;

 dmabuf_exp_remove_map(gntdev_dmabuf->u.exp.priv,
         gntdev_dmabuf->u.exp.map);
 mutex_lock(&priv->lock);
 kref_put(&gntdev_dmabuf->u.exp.refcount, dmabuf_exp_release);
 mutex_unlock(&priv->lock);
}
