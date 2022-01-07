
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_net {TYPE_1__* vqs; } ;
struct TYPE_2__ {int * ubuf_info; } ;


 int VHOST_NET_VQ_MAX ;
 int kfree (int *) ;

__attribute__((used)) static void vhost_net_clear_ubuf_info(struct vhost_net *n)
{
 int i;

 for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
  kfree(n->vqs[i].ubuf_info);
  n->vqs[i].ubuf_info = ((void*)0);
 }
}
