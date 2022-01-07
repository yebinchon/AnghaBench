
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_ubuf_ref {int refcount; int wait; } ;


 int atomic_read (int *) ;
 int vhost_net_ubuf_put (struct vhost_net_ubuf_ref*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void vhost_net_ubuf_put_and_wait(struct vhost_net_ubuf_ref *ubufs)
{
 vhost_net_ubuf_put(ubufs);
 wait_event(ubufs->wait, !atomic_read(&ubufs->refcount));
}
