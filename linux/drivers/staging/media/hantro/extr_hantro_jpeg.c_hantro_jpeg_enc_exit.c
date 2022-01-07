
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dma; int cpu; int size; } ;
struct TYPE_6__ {TYPE_2__ bounce_buffer; } ;
struct hantro_ctx {TYPE_3__ jpeg_enc; TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_ATTR_ALLOC_SINGLE_PAGES ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;

void hantro_jpeg_enc_exit(struct hantro_ctx *ctx)
{
 dma_free_attrs(ctx->dev->dev,
         ctx->jpeg_enc.bounce_buffer.size,
         ctx->jpeg_enc.bounce_buffer.cpu,
         ctx->jpeg_enc.bounce_buffer.dma,
         DMA_ATTR_ALLOC_SINGLE_PAGES);
}
