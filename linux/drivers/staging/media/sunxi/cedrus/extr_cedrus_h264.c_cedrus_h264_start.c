
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cedrus_dev {int dev; } ;
struct TYPE_5__ {unsigned int mv_col_buf_field_size; unsigned int mv_col_buf_size; int pic_info_buf_dma; void* pic_info_buf; int neighbor_info_buf_dma; void* neighbor_info_buf; void* mv_col_buf; int mv_col_buf_dma; } ;
struct TYPE_6__ {TYPE_2__ h264; } ;
struct TYPE_4__ {int height; int width; } ;
struct cedrus_ctx {TYPE_3__ codec; TYPE_1__ src_fmt; struct cedrus_dev* dev; } ;


 unsigned int CEDRUS_H264_FRAME_NUM ;
 unsigned int CEDRUS_NEIGHBOR_INFO_BUF_SIZE ;
 unsigned int CEDRUS_PIC_INFO_BUF_SIZE ;
 int DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,unsigned int,int *,int ) ;
 int dma_free_coherent (int ,unsigned int,void*,int ) ;

__attribute__((used)) static int cedrus_h264_start(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;
 unsigned int field_size;
 unsigned int mv_col_size;
 int ret;







 ctx->codec.h264.pic_info_buf =
  dma_alloc_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
       &ctx->codec.h264.pic_info_buf_dma,
       GFP_KERNEL);
 if (!ctx->codec.h264.pic_info_buf)
  return -ENOMEM;
 ctx->codec.h264.neighbor_info_buf =
  dma_alloc_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
       &ctx->codec.h264.neighbor_info_buf_dma,
       GFP_KERNEL);
 if (!ctx->codec.h264.neighbor_info_buf) {
  ret = -ENOMEM;
  goto err_pic_buf;
 }

 field_size = DIV_ROUND_UP(ctx->src_fmt.width, 16) *
  DIV_ROUND_UP(ctx->src_fmt.height, 16) * 16;







 field_size = field_size * 2;







 field_size = field_size * 2;
 ctx->codec.h264.mv_col_buf_field_size = field_size;

 mv_col_size = field_size * 2 * CEDRUS_H264_FRAME_NUM;
 ctx->codec.h264.mv_col_buf_size = mv_col_size;
 ctx->codec.h264.mv_col_buf = dma_alloc_coherent(dev->dev,
       ctx->codec.h264.mv_col_buf_size,
       &ctx->codec.h264.mv_col_buf_dma,
       GFP_KERNEL);
 if (!ctx->codec.h264.mv_col_buf) {
  ret = -ENOMEM;
  goto err_neighbor_buf;
 }

 return 0;

err_neighbor_buf:
 dma_free_coherent(dev->dev, CEDRUS_NEIGHBOR_INFO_BUF_SIZE,
     ctx->codec.h264.neighbor_info_buf,
     ctx->codec.h264.neighbor_info_buf_dma);

err_pic_buf:
 dma_free_coherent(dev->dev, CEDRUS_PIC_INFO_BUF_SIZE,
     ctx->codec.h264.pic_info_buf,
     ctx->codec.h264.pic_info_buf_dma);
 return ret;
}
