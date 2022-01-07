
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 int virtqueue_add (struct virtqueue*,struct scatterlist**,unsigned int,int ,int,void*,int *,int ) ;

int virtqueue_add_inbuf(struct virtqueue *vq,
   struct scatterlist *sg, unsigned int num,
   void *data,
   gfp_t gfp)
{
 return virtqueue_add(vq, &sg, num, 0, 1, data, ((void*)0), gfp);
}
