
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_dmabuf_priv {int dummy; } ;


 int dmabuf_imp_release_all (struct gntdev_dmabuf_priv*) ;
 int kfree (struct gntdev_dmabuf_priv*) ;

void gntdev_dmabuf_fini(struct gntdev_dmabuf_priv *priv)
{
 dmabuf_imp_release_all(priv);
 kfree(priv);
}
