
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hantro_dev {int dev; } ;
struct TYPE_3__ {int dma; int cpu; int size; } ;
struct TYPE_4__ {TYPE_1__ qtable; } ;
struct hantro_ctx {TYPE_2__ mpeg2_dec; struct hantro_dev* dev; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;

 dma_free_coherent(vpu->dev,
     ctx->mpeg2_dec.qtable.size,
     ctx->mpeg2_dec.qtable.cpu,
     ctx->mpeg2_dec.qtable.dma);
}
