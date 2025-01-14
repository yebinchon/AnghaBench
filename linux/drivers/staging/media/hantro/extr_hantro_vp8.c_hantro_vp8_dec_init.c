
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vp8_prob_tbl_packed {int dummy; } ;
struct hantro_dev {int dev; } ;
struct hantro_aux_buf {size_t size; int dma; void* cpu; } ;
struct TYPE_4__ {struct hantro_aux_buf segment_map; struct hantro_aux_buf prob_tbl; } ;
struct TYPE_3__ {unsigned int width; unsigned int height; } ;
struct hantro_ctx {TYPE_2__ vp8_dec; TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 size_t round_up (unsigned int,int) ;

int hantro_vp8_dec_init(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;
 struct hantro_aux_buf *aux_buf;
 unsigned int mb_width, mb_height;
 size_t segment_map_size;
 int ret;


 mb_width = DIV_ROUND_UP(ctx->dst_fmt.width, 16);
 mb_height = DIV_ROUND_UP(ctx->dst_fmt.height, 16);
 segment_map_size = round_up(DIV_ROUND_UP(mb_width * mb_height, 4), 64);





 aux_buf = &ctx->vp8_dec.segment_map;
 aux_buf->size = segment_map_size;
 aux_buf->cpu = dma_alloc_coherent(vpu->dev, aux_buf->size,
       &aux_buf->dma, GFP_KERNEL);
 if (!aux_buf->cpu)
  return -ENOMEM;





 aux_buf = &ctx->vp8_dec.prob_tbl;
 aux_buf->size = sizeof(struct vp8_prob_tbl_packed);
 aux_buf->cpu = dma_alloc_coherent(vpu->dev, aux_buf->size,
       &aux_buf->dma, GFP_KERNEL);
 if (!aux_buf->cpu) {
  ret = -ENOMEM;
  goto err_free_seg_map;
 }

 return 0;

err_free_seg_map:
 dma_free_coherent(vpu->dev, ctx->vp8_dec.segment_map.size,
     ctx->vp8_dec.segment_map.cpu,
     ctx->vp8_dec.segment_map.dma);

 return ret;
}
