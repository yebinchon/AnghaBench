
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_dmabuf_wait_obj {int next; } ;
struct gntdev_dmabuf_priv {int lock; } ;


 int kfree (struct gntdev_dmabuf_wait_obj*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dmabuf_exp_wait_obj_free(struct gntdev_dmabuf_priv *priv,
         struct gntdev_dmabuf_wait_obj *obj)
{
 mutex_lock(&priv->lock);
 list_del(&obj->next);
 mutex_unlock(&priv->lock);
 kfree(obj);
}
