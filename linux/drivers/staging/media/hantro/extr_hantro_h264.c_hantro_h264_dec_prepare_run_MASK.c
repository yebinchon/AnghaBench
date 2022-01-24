#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hantro_h264_reflist_builder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  b1; int /*<<< orphan*/  b0; int /*<<< orphan*/  p; } ;
struct hantro_h264_dec_ctrls {void* pps; void* sps; void* slices; void* decode; void* scaling; } ;
struct hantro_h264_dec_hw_ctx {TYPE_1__ reflists; struct hantro_h264_dec_ctrls ctrls; } ;
struct hantro_ctx {struct hantro_h264_dec_hw_ctx h264_dec; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_PPS ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_SPS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hantro_h264_reflist_builder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hantro_h264_reflist_builder*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*,struct hantro_h264_reflist_builder*) ; 
 int /*<<< orphan*/  FUNC6 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct hantro_ctx*) ; 

int FUNC8(struct hantro_ctx *ctx)
{
	struct hantro_h264_dec_hw_ctx *h264_ctx = &ctx->h264_dec;
	struct hantro_h264_dec_ctrls *ctrls = &h264_ctx->ctrls;
	struct hantro_h264_reflist_builder reflist_builder;

	FUNC4(ctx);

	ctrls->scaling =
		FUNC3(ctx, V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX);
	if (FUNC0(!ctrls->scaling))
		return -EINVAL;

	ctrls->decode =
		FUNC3(ctx, V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS);
	if (FUNC0(!ctrls->decode))
		return -EINVAL;

	ctrls->slices =
		FUNC3(ctx, V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS);
	if (FUNC0(!ctrls->slices))
		return -EINVAL;

	ctrls->sps =
		FUNC3(ctx, V4L2_CID_MPEG_VIDEO_H264_SPS);
	if (FUNC0(!ctrls->sps))
		return -EINVAL;

	ctrls->pps =
		FUNC3(ctx, V4L2_CID_MPEG_VIDEO_H264_PPS);
	if (FUNC0(!ctrls->pps))
		return -EINVAL;

	/* Update the DPB with new refs. */
	FUNC7(ctx);

	/* Prepare data in memory. */
	FUNC6(ctx);

	/* Build the P/B{0,1} ref lists. */
	FUNC5(ctx, &reflist_builder);
	FUNC2(&reflist_builder, h264_ctx->reflists.p);
	FUNC1(&reflist_builder, h264_ctx->reflists.b0,
			  h264_ctx->reflists.b1);
	return 0;
}