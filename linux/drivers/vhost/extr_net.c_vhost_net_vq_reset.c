
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_net {TYPE_1__* vqs; } ;
struct TYPE_2__ {int rxq; scalar_t__ sock_hlen; scalar_t__ vhost_hlen; int * ubufs; scalar_t__ upend_idx; scalar_t__ done_idx; } ;


 int VHOST_NET_VQ_MAX ;
 int vhost_net_buf_init (int *) ;
 int vhost_net_clear_ubuf_info (struct vhost_net*) ;

__attribute__((used)) static void vhost_net_vq_reset(struct vhost_net *n)
{
 int i;

 vhost_net_clear_ubuf_info(n);

 for (i = 0; i < VHOST_NET_VQ_MAX; i++) {
  n->vqs[i].done_idx = 0;
  n->vqs[i].upend_idx = 0;
  n->vqs[i].ubufs = ((void*)0);
  n->vqs[i].vhost_hlen = 0;
  n->vqs[i].sock_hlen = 0;
  vhost_net_buf_init(&n->vqs[i].rxq);
 }

}
