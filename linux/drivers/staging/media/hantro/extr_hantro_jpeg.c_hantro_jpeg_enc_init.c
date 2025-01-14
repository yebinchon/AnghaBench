
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int cpu; int dma; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_3__ bounce_buffer; } ;
struct TYPE_11__ {TYPE_6__* plane_fmt; } ;
struct hantro_ctx {TYPE_4__ jpeg_enc; TYPE_2__* dev; TYPE_1__* vpu_dst_fmt; TYPE_5__ dst_fmt; } ;
struct TYPE_12__ {scalar_t__ sizeimage; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {scalar_t__ header_size; } ;


 int DMA_ATTR_ALLOC_SINGLE_PAGES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_attrs (int ,scalar_t__,int *,int ,int ) ;

int hantro_jpeg_enc_init(struct hantro_ctx *ctx)
{
 ctx->jpeg_enc.bounce_buffer.size =
  ctx->dst_fmt.plane_fmt[0].sizeimage -
  ctx->vpu_dst_fmt->header_size;

 ctx->jpeg_enc.bounce_buffer.cpu =
  dma_alloc_attrs(ctx->dev->dev,
    ctx->jpeg_enc.bounce_buffer.size,
    &ctx->jpeg_enc.bounce_buffer.dma,
    GFP_KERNEL,
    DMA_ATTR_ALLOC_SINGLE_PAGES);
 if (!ctx->jpeg_enc.bounce_buffer.cpu)
  return -ENOMEM;

 return 0;
}
