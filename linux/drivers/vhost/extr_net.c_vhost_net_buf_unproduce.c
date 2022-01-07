
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {scalar_t__ tail; scalar_t__ head; scalar_t__ queue; } ;
struct vhost_net_virtqueue {scalar_t__ rx_ring; struct vhost_net_buf rxq; } ;


 int ptr_ring_unconsume (scalar_t__,scalar_t__,int ,int ) ;
 int tun_ptr_free ;
 int vhost_net_buf_get_size (struct vhost_net_buf*) ;
 int vhost_net_buf_is_empty (struct vhost_net_buf*) ;

__attribute__((used)) static void vhost_net_buf_unproduce(struct vhost_net_virtqueue *nvq)
{
 struct vhost_net_buf *rxq = &nvq->rxq;

 if (nvq->rx_ring && !vhost_net_buf_is_empty(rxq)) {
  ptr_ring_unconsume(nvq->rx_ring, rxq->queue + rxq->head,
       vhost_net_buf_get_size(rxq),
       tun_ptr_free);
  rxq->head = rxq->tail = 0;
 }
}
