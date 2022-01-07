
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtqueue_add_packed (struct virtqueue*,struct scatterlist**,unsigned int,unsigned int,unsigned int,void*,void*,int ) ;
 int virtqueue_add_split (struct virtqueue*,struct scatterlist**,unsigned int,unsigned int,unsigned int,void*,void*,int ) ;

__attribute__((used)) static inline int virtqueue_add(struct virtqueue *_vq,
    struct scatterlist *sgs[],
    unsigned int total_sg,
    unsigned int out_sgs,
    unsigned int in_sgs,
    void *data,
    void *ctx,
    gfp_t gfp)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->packed_ring ? virtqueue_add_packed(_vq, sgs, total_sg,
     out_sgs, in_sgs, data, ctx, gfp) :
     virtqueue_add_split(_vq, sgs, total_sg,
     out_sgs, in_sgs, data, ctx, gfp);
}
