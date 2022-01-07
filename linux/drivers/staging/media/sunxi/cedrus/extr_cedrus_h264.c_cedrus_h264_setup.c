
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cedrus_run {int dummy; } ;
struct cedrus_dev {int dummy; } ;
struct TYPE_3__ {int neighbor_info_buf_dma; int pic_info_buf_dma; } ;
struct TYPE_4__ {TYPE_1__ h264; } ;
struct cedrus_ctx {TYPE_2__ codec; struct cedrus_dev* dev; } ;


 int CEDRUS_CODEC_H264 ;
 int VE_H264_EXTRA_BUFFER1 ;
 int VE_H264_EXTRA_BUFFER2 ;
 int VE_H264_SDROT_CTRL ;
 int cedrus_engine_enable (struct cedrus_dev*,int ) ;
 int cedrus_set_params (struct cedrus_ctx*,struct cedrus_run*) ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;
 int cedrus_write_frame_list (struct cedrus_ctx*,struct cedrus_run*) ;
 int cedrus_write_scaling_lists (struct cedrus_ctx*,struct cedrus_run*) ;

__attribute__((used)) static void cedrus_h264_setup(struct cedrus_ctx *ctx,
         struct cedrus_run *run)
{
 struct cedrus_dev *dev = ctx->dev;

 cedrus_engine_enable(dev, CEDRUS_CODEC_H264);

 cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
 cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
       ctx->codec.h264.pic_info_buf_dma);
 cedrus_write(dev, VE_H264_EXTRA_BUFFER2,
       ctx->codec.h264.neighbor_info_buf_dma);

 cedrus_write_scaling_lists(ctx, run);
 cedrus_write_frame_list(ctx, run);

 cedrus_set_params(ctx, run);
}
