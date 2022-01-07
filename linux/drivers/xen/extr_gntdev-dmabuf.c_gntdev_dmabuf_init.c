
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_dmabuf_priv {struct file* filp; int imp_list; int exp_wait_list; int exp_list; int lock; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 struct gntdev_dmabuf_priv* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct gntdev_dmabuf_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct gntdev_dmabuf_priv *gntdev_dmabuf_init(struct file *filp)
{
 struct gntdev_dmabuf_priv *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ERR_PTR(-ENOMEM);

 mutex_init(&priv->lock);
 INIT_LIST_HEAD(&priv->exp_list);
 INIT_LIST_HEAD(&priv->exp_wait_list);
 INIT_LIST_HEAD(&priv->imp_list);

 priv->filp = filp;

 return priv;
}
