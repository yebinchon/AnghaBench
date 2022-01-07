
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_net {TYPE_1__* vqs; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int vq; } ;


 size_t VHOST_NET_VQ_RX ;
 size_t VHOST_NET_VQ_TX ;
 struct socket* vhost_net_stop_vq (struct vhost_net*,int *) ;

__attribute__((used)) static void vhost_net_stop(struct vhost_net *n, struct socket **tx_sock,
      struct socket **rx_sock)
{
 *tx_sock = vhost_net_stop_vq(n, &n->vqs[VHOST_NET_VQ_TX].vq);
 *rx_sock = vhost_net_stop_vq(n, &n->vqs[VHOST_NET_VQ_RX].vq);
}
