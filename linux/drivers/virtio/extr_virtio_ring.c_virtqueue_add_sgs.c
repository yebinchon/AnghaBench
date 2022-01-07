
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 struct scatterlist* sg_next (struct scatterlist*) ;
 int virtqueue_add (struct virtqueue*,struct scatterlist**,unsigned int,unsigned int,unsigned int,void*,int *,int ) ;

int virtqueue_add_sgs(struct virtqueue *_vq,
        struct scatterlist *sgs[],
        unsigned int out_sgs,
        unsigned int in_sgs,
        void *data,
        gfp_t gfp)
{
 unsigned int i, total_sg = 0;


 for (i = 0; i < out_sgs + in_sgs; i++) {
  struct scatterlist *sg;

  for (sg = sgs[i]; sg; sg = sg_next(sg))
   total_sg++;
 }
 return virtqueue_add(_vq, sgs, total_sg, out_sgs, in_sgs,
        data, ((void*)0), gfp);
}
