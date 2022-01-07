
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma; int cpu; int size; } ;
struct TYPE_4__ {int dma; int cpu; int size; } ;
struct hantro_vp8_dec_hw_ctx {TYPE_1__ prob_tbl; TYPE_2__ segment_map; } ;
struct hantro_dev {int dev; } ;
struct hantro_ctx {struct hantro_dev* dev; struct hantro_vp8_dec_hw_ctx vp8_dec; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;

void hantro_vp8_dec_exit(struct hantro_ctx *ctx)
{
 struct hantro_vp8_dec_hw_ctx *vp8_dec = &ctx->vp8_dec;
 struct hantro_dev *vpu = ctx->dev;

 dma_free_coherent(vpu->dev, vp8_dec->segment_map.size,
     vp8_dec->segment_map.cpu, vp8_dec->segment_map.dma);
 dma_free_coherent(vpu->dev, vp8_dec->prob_tbl.size,
     vp8_dec->prob_tbl.cpu, vp8_dec->prob_tbl.dma);
}
