
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vhost_net {int tx_flush; TYPE_2__* vqs; } ;
struct TYPE_6__ {int refcount; } ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ vq; TYPE_3__* ubufs; } ;


 size_t VHOST_NET_VQ_RX ;
 size_t VHOST_NET_VQ_TX ;
 int atomic_set (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vhost_net_flush_vq (struct vhost_net*,size_t) ;
 int vhost_net_ubuf_put_and_wait (TYPE_3__*) ;

__attribute__((used)) static void vhost_net_flush(struct vhost_net *n)
{
 vhost_net_flush_vq(n, VHOST_NET_VQ_TX);
 vhost_net_flush_vq(n, VHOST_NET_VQ_RX);
 if (n->vqs[VHOST_NET_VQ_TX].ubufs) {
  mutex_lock(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
  n->tx_flush = 1;
  mutex_unlock(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);

  vhost_net_ubuf_put_and_wait(n->vqs[VHOST_NET_VQ_TX].ubufs);
  mutex_lock(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
  n->tx_flush = 0;
  atomic_set(&n->vqs[VHOST_NET_VQ_TX].ubufs->refcount, 1);
  mutex_unlock(&n->vqs[VHOST_NET_VQ_TX].vq.mutex);
 }
}
