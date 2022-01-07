
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int dummy; } ;
struct vhost_net_ubuf_ref {struct vhost_virtqueue* vq; int wait; int refcount; } ;


 int ENOMEM ;
 struct vhost_net_ubuf_ref* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct vhost_net_ubuf_ref* kmalloc (int,int ) ;

__attribute__((used)) static struct vhost_net_ubuf_ref *
vhost_net_ubuf_alloc(struct vhost_virtqueue *vq, bool zcopy)
{
 struct vhost_net_ubuf_ref *ubufs;

 if (!zcopy)
  return ((void*)0);
 ubufs = kmalloc(sizeof(*ubufs), GFP_KERNEL);
 if (!ubufs)
  return ERR_PTR(-ENOMEM);
 atomic_set(&ubufs->refcount, 1);
 init_waitqueue_head(&ubufs->wait);
 ubufs->vq = vq;
 return ubufs;
}
