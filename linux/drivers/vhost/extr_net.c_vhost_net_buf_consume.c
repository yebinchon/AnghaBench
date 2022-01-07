
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net_buf {int head; } ;


 void* vhost_net_buf_get_ptr (struct vhost_net_buf*) ;

__attribute__((used)) static void *vhost_net_buf_consume(struct vhost_net_buf *rxq)
{
 void *ret = vhost_net_buf_get_ptr(rxq);
 ++rxq->head;
 return ret;
}
