
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {int tail; int queue; scalar_t__ head; } ;
struct vhost_net_virtqueue {int rx_ring; struct vhost_net_buf rxq; } ;


 int VHOST_NET_BATCH ;
 int ptr_ring_consume_batched (int ,int ,int ) ;

__attribute__((used)) static int vhost_net_buf_produce(struct vhost_net_virtqueue *nvq)
{
 struct vhost_net_buf *rxq = &nvq->rxq;

 rxq->head = 0;
 rxq->tail = ptr_ring_consume_batched(nvq->rx_ring, rxq->queue,
           VHOST_NET_BATCH);
 return rxq->tail;
}
