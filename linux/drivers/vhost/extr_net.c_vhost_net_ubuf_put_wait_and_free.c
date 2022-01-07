
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_ubuf_ref {int dummy; } ;


 int kfree (struct vhost_net_ubuf_ref*) ;
 int vhost_net_ubuf_put_and_wait (struct vhost_net_ubuf_ref*) ;

__attribute__((used)) static void vhost_net_ubuf_put_wait_and_free(struct vhost_net_ubuf_ref *ubufs)
{
 vhost_net_ubuf_put_and_wait(ubufs);
 kfree(ubufs);
}
