
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 void* virtqueue_get_buf_ctx_packed (struct virtqueue*,unsigned int*,void**) ;
 void* virtqueue_get_buf_ctx_split (struct virtqueue*,unsigned int*,void**) ;

void *virtqueue_get_buf_ctx(struct virtqueue *_vq, unsigned int *len,
       void **ctx)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->packed_ring ? virtqueue_get_buf_ctx_packed(_vq, len, ctx) :
     virtqueue_get_buf_ctx_split(_vq, len, ctx);
}
