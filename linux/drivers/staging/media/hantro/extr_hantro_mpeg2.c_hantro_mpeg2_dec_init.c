
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hantro_dev {int dev; } ;
struct TYPE_3__ {int size; int cpu; int dma; } ;
struct TYPE_4__ {TYPE_1__ qtable; } ;
struct hantro_ctx {TYPE_2__ mpeg2_dec; struct hantro_dev* dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int zigzag ;

int hantro_mpeg2_dec_init(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;

 ctx->mpeg2_dec.qtable.size = ARRAY_SIZE(zigzag) * 4;
 ctx->mpeg2_dec.qtable.cpu =
  dma_alloc_coherent(vpu->dev,
       ctx->mpeg2_dec.qtable.size,
       &ctx->mpeg2_dec.qtable.dma,
       GFP_KERNEL);
 if (!ctx->mpeg2_dec.qtable.cpu)
  return -ENOMEM;
 return 0;
}
