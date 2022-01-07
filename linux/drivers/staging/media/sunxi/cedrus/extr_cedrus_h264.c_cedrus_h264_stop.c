
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cedrus_dev {int dev; } ;
struct TYPE_4__ {int pic_info_buf_dma; int pic_info_buf; int neighbor_info_buf_dma; int neighbor_info_buf; int mv_col_buf_dma; int mv_col_buf; int mv_col_buf_size; } ;
struct TYPE_3__ {TYPE_2__ h264; } ;
struct cedrus_ctx {TYPE_1__ codec; struct cedrus_dev* dev; } ;


 int CEDRUS_NEIGHBOR_INFO_BUF_SIZE ;
 int CEDRUS_PIC_INFO_BUF_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void cedrus_h264_stop(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;

 dma_free_coherent(dev->dev, ctx->codec.h264.mv_col_buf_size,
     ctx->codec.h264.mv_col_buf,
     ctx->codec.h264.mv_col_buf_dma);
 dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
     ctx->codec.h264.neighbor_info_buf,
     ctx->codec.h264.neighbor_info_buf_dma);
 dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
     ctx->codec.h264.pic_info_buf,
     ctx->codec.h264.pic_info_buf_dma);
}
