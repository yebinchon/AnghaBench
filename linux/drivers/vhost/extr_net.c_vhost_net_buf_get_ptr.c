
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {size_t tail; size_t head; void** queue; } ;



__attribute__((used)) static void *vhost_net_buf_get_ptr(struct vhost_net_buf *rxq)
{
 if (rxq->tail != rxq->head)
  return rxq->queue[rxq->head];
 else
  return ((void*)0);
}
