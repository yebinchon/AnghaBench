
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hantro_h264_reflist_builder {int dummy; } ;
struct TYPE_2__ {int b1; int b0; int p; } ;
struct hantro_h264_dec_ctrls {void* pps; void* sps; void* slices; void* decode; void* scaling; } ;
struct hantro_h264_dec_hw_ctx {TYPE_1__ reflists; struct hantro_h264_dec_ctrls ctrls; } ;
struct hantro_ctx {struct hantro_h264_dec_hw_ctx h264_dec; } ;


 int EINVAL ;
 int V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS ;
 int V4L2_CID_MPEG_VIDEO_H264_PPS ;
 int V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX ;
 int V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS ;
 int V4L2_CID_MPEG_VIDEO_H264_SPS ;
 scalar_t__ WARN_ON (int) ;
 int build_b_ref_lists (struct hantro_h264_reflist_builder*,int ,int ) ;
 int build_p_ref_list (struct hantro_h264_reflist_builder*,int ) ;
 void* hantro_get_ctrl (struct hantro_ctx*,int ) ;
 int hantro_prepare_run (struct hantro_ctx*) ;
 int init_reflist_builder (struct hantro_ctx*,struct hantro_h264_reflist_builder*) ;
 int prepare_table (struct hantro_ctx*) ;
 int update_dpb (struct hantro_ctx*) ;

int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
{
 struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
 struct hantro_h264_dec_ctrls *ctrls = &h264_ctx->ctrls;
 struct hantro_h264_reflist_builder reflist_builder;

 hantro_prepare_run(ctx);

 ctrls->scaling =
  hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX);
 if (WARN_ON(!ctrls->scaling))
  return -EINVAL;

 ctrls->decode =
  hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
 if (WARN_ON(!ctrls->decode))
  return -EINVAL;

 ctrls->slices =
  hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS);
 if (WARN_ON(!ctrls->slices))
  return -EINVAL;

 ctrls->sps =
  hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_SPS);
 if (WARN_ON(!ctrls->sps))
  return -EINVAL;

 ctrls->pps =
  hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_H264_PPS);
 if (WARN_ON(!ctrls->pps))
  return -EINVAL;


 update_dpb(ctx);


 prepare_table(ctx);


 init_reflist_builder(ctx, &reflist_builder);
 build_p_ref_list(&reflist_builder, h264_ctx->reflists.p);
 build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
     h264_ctx->reflists.b1);
 return 0;
}
