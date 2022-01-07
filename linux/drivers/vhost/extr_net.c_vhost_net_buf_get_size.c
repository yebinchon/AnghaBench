
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {int tail; int head; } ;



__attribute__((used)) static int vhost_net_buf_get_size(struct vhost_net_buf *rxq)
{
 return rxq->tail - rxq->head;
}
