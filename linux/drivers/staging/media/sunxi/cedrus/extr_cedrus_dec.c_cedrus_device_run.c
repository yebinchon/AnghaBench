
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct media_request {int dummy; } ;
struct TYPE_15__ {void* sps; void* slice_params; void* scaling_matrix; void* pps; void* decode_params; } ;
struct TYPE_14__ {void* quantization; void* slice_params; } ;
struct cedrus_run {int dst; TYPE_8__* src; TYPE_6__ h264; TYPE_5__ mpeg2; } ;
struct cedrus_dev {TYPE_7__** dec_ops; } ;
struct TYPE_13__ {int pixelformat; } ;
struct TYPE_10__ {int m2m_ctx; } ;
struct cedrus_ctx {size_t current_codec; int hdl; TYPE_4__ src_fmt; TYPE_1__ fh; struct cedrus_dev* dev; } ;
struct TYPE_11__ {struct media_request* req; } ;
struct TYPE_12__ {TYPE_2__ req_obj; } ;
struct TYPE_17__ {TYPE_3__ vb2_buf; } ;
struct TYPE_16__ {int (* trigger ) (struct cedrus_ctx*) ;int (* setup ) (struct cedrus_ctx*,struct cedrus_run*) ;} ;


 int V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS ;
 int V4L2_CID_MPEG_VIDEO_H264_PPS ;
 int V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX ;
 int V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS ;
 int V4L2_CID_MPEG_VIDEO_H264_SPS ;
 int V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION ;
 int V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS ;


 void* cedrus_find_control_data (struct cedrus_ctx*,int ) ;
 int stub1 (struct cedrus_ctx*,struct cedrus_run*) ;
 int stub2 (struct cedrus_ctx*) ;
 int v4l2_ctrl_request_complete (struct media_request*,int *) ;
 int v4l2_ctrl_request_setup (struct media_request*,int *) ;
 int v4l2_m2m_buf_copy_metadata (TYPE_8__*,int ,int) ;
 int v4l2_m2m_next_dst_buf (int ) ;
 TYPE_8__* v4l2_m2m_next_src_buf (int ) ;

void cedrus_device_run(void *priv)
{
 struct cedrus_ctx *ctx = priv;
 struct cedrus_dev *dev = ctx->dev;
 struct cedrus_run run = {};
 struct media_request *src_req;

 run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);


 src_req = run.src->vb2_buf.req_obj.req;

 if (src_req)
  v4l2_ctrl_request_setup(src_req, &ctx->hdl);

 switch (ctx->src_fmt.pixelformat) {
 case 128:
  run.mpeg2.slice_params = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
  run.mpeg2.quantization = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
  break;

 case 129:
  run.h264.decode_params = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
  run.h264.pps = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_H264_PPS);
  run.h264.scaling_matrix = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX);
  run.h264.slice_params = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS);
  run.h264.sps = cedrus_find_control_data(ctx,
   V4L2_CID_MPEG_VIDEO_H264_SPS);
  break;

 default:
  break;
 }

 v4l2_m2m_buf_copy_metadata(run.src, run.dst, 1);

 dev->dec_ops[ctx->current_codec]->setup(ctx, &run);



 if (src_req)
  v4l2_ctrl_request_complete(src_req, &ctx->hdl);

 dev->dec_ops[ctx->current_codec]->trigger(ctx);
}
