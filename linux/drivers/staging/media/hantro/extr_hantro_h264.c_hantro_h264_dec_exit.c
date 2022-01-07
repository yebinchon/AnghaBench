
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hantro_aux_buf {int dma; int cpu; int size; } ;
struct hantro_h264_dec_hw_ctx {struct hantro_aux_buf priv; } ;
struct hantro_dev {int dev; } ;
struct hantro_ctx {struct hantro_h264_dec_hw_ctx h264_dec; struct hantro_dev* dev; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

void hantro_h264_dec_exit(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;
 struct hantro_h264_dec_hw_ctx *h264_dec = &ctx->h264_dec;
 struct hantro_aux_buf *priv = &h264_dec->priv;

 dma_free_coherent(vpu->dev, priv->size, priv->cpu, priv->dma);
}
