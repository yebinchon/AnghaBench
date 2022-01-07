
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_ubuf_ref {int wait; int refcount; } ;


 int atomic_sub_return (int,int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static int vhost_net_ubuf_put(struct vhost_net_ubuf_ref *ubufs)
{
 int r = atomic_sub_return(1, &ubufs->refcount);
 if (unlikely(!r))
  wake_up(&ubufs->wait);
 return r;
}
