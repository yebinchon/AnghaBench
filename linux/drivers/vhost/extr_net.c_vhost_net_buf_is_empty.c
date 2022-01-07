
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {scalar_t__ tail; scalar_t__ head; } ;



__attribute__((used)) static int vhost_net_buf_is_empty(struct vhost_net_buf *rxq)
{
 return rxq->tail == rxq->head;
}
