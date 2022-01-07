
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 void* virtqueue_get_buf_ctx (struct virtqueue*,unsigned int*,int *) ;

void *virtqueue_get_buf(struct virtqueue *_vq, unsigned int *len)
{
 return virtqueue_get_buf_ctx(_vq, len, ((void*)0));
}
