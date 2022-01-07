
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {scalar_t__ tail; scalar_t__ head; } ;



__attribute__((used)) static void vhost_net_buf_init(struct vhost_net_buf *rxq)
{
 rxq->head = rxq->tail = 0;
}
