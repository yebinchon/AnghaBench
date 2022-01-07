
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 unsigned int virtqueue_enable_cb_prepare (struct virtqueue*) ;
 int virtqueue_poll (struct virtqueue*,unsigned int) ;

bool virtqueue_enable_cb(struct virtqueue *_vq)
{
 unsigned last_used_idx = virtqueue_enable_cb_prepare(_vq);

 return !virtqueue_poll(_vq, last_used_idx);
}
