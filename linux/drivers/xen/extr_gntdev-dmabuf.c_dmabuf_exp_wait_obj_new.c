
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gntdev_dmabuf_wait_obj {int next; struct gntdev_dmabuf* gntdev_dmabuf; int completion; } ;
struct gntdev_dmabuf_priv {int lock; int exp_wait_list; } ;
struct TYPE_3__ {int refcount; } ;
struct TYPE_4__ {TYPE_1__ exp; } ;
struct gntdev_dmabuf {TYPE_2__ u; } ;


 int ENOMEM ;
 struct gntdev_dmabuf_wait_obj* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dmabuf_exp_release ;
 int init_completion (int *) ;
 int kref_put (int *,int ) ;
 struct gntdev_dmabuf_wait_obj* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct gntdev_dmabuf_wait_obj *
dmabuf_exp_wait_obj_new(struct gntdev_dmabuf_priv *priv,
   struct gntdev_dmabuf *gntdev_dmabuf)
{
 struct gntdev_dmabuf_wait_obj *obj;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ERR_PTR(-ENOMEM);

 init_completion(&obj->completion);
 obj->gntdev_dmabuf = gntdev_dmabuf;

 mutex_lock(&priv->lock);
 list_add(&obj->next, &priv->exp_wait_list);

 kref_put(&gntdev_dmabuf->u.exp.refcount, dmabuf_exp_release);
 mutex_unlock(&priv->lock);
 return obj;
}
