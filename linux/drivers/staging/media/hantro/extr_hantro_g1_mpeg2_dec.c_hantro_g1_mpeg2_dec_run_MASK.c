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
typedef  int u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct v4l2_mpeg2_sequence {int /*<<< orphan*/  progressive_sequence; } ;
struct v4l2_mpeg2_picture {scalar_t__ picture_structure; scalar_t__ picture_coding_type; int /*<<< orphan*/ ** f_code; int /*<<< orphan*/  alternate_scan; int /*<<< orphan*/  frame_pred_frame_dct; int /*<<< orphan*/  intra_vlc_format; int /*<<< orphan*/  intra_dc_precision; int /*<<< orphan*/  concealment_motion_vectors; int /*<<< orphan*/  q_scale_type; int /*<<< orphan*/  top_field_first; } ;
struct v4l2_ctrl_mpeg2_slice_params {int bit_size; int /*<<< orphan*/  data_bit_offset; struct v4l2_mpeg2_picture picture; struct v4l2_mpeg2_sequence sequence; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct hantro_ctx {TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int) ; 
 int FUNC32 (int) ; 
 int FUNC33 (int) ; 
 int FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int FUNC36 (int) ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int FUNC38 (int /*<<< orphan*/ ) ; 
 int FUNC39 (int) ; 
 int FUNC40 (int /*<<< orphan*/ ) ; 
 int FUNC41 (int /*<<< orphan*/ ) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 int FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (int) ; 
 int FUNC45 (int /*<<< orphan*/ ) ; 
 int FUNC46 (int /*<<< orphan*/ ) ; 
 int FUNC47 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ) ; 
 scalar_t__ PICT_FRAME ; 
 scalar_t__ PICT_TOP_FIELD ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS ; 
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_B ; 
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_I ; 
 int /*<<< orphan*/  FUNC51 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC52 (struct hantro_dev*,struct hantro_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_mpeg2_sequence const*,struct v4l2_mpeg2_picture const*,struct v4l2_ctrl_mpeg2_slice_params const*) ; 
 int /*<<< orphan*/  FUNC53 (struct hantro_dev*,struct hantro_ctx*) ; 
 struct v4l2_ctrl_mpeg2_slice_params* FUNC54 (struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC55 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC56 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC57 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC58 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC60(struct hantro_ctx *ctx)
{
	struct hantro_dev *vpu = ctx->dev;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
	const struct v4l2_mpeg2_sequence *sequence;
	const struct v4l2_mpeg2_picture *picture;
	u32 reg;

	src_buf = FUNC56(ctx);
	dst_buf = FUNC55(ctx);

	/* Apply request controls if any */
	FUNC57(ctx);

	slice_params = FUNC54(ctx,
				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
	sequence = &slice_params->sequence;
	picture = &slice_params->picture;

	reg = FUNC5(0) |
	      FUNC20(1) |
	      FUNC19(1) |
	      FUNC18(1) |
	      FUNC10(1) |
	      FUNC15(1) |
	      FUNC8(0) |
	      FUNC12(0) |
	      FUNC7(1) |
	      FUNC11(1) |
	      FUNC16(1) |
	      FUNC4(0) |
	      FUNC17(0) |
	      FUNC13(16);
	FUNC59(vpu, reg, FUNC48(2));

	reg = FUNC14(5) |
	      FUNC41(0) |
	      FUNC35(!sequence->progressive_sequence) |
	      FUNC34(picture->picture_structure != PICT_FRAME) |
	      FUNC33(picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B) |
	      FUNC36(picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I) |
	      FUNC39(picture->picture_structure == PICT_TOP_FIELD) |
	      FUNC27(0) |
	      FUNC25(1) |
	      FUNC47(0) |
	      FUNC6(0);
	FUNC59(vpu, reg, FUNC48(3));

	reg = FUNC38(FUNC50(ctx->dst_fmt.width)) |
	      FUNC37(FUNC49(ctx->dst_fmt.height)) |
	      FUNC0(picture->alternate_scan) |
	      FUNC46(picture->top_field_first);
	FUNC59(vpu, reg, FUNC48(4));

	reg = FUNC45(slice_params->data_bit_offset) |
	      FUNC40(picture->q_scale_type) |
	      FUNC3(picture->concealment_motion_vectors) |
	      FUNC29(picture->intra_dc_precision) |
	      FUNC30(picture->intra_vlc_format) |
	      FUNC26(picture->frame_pred_frame_dct);
	FUNC59(vpu, reg, FUNC48(5));

	reg = FUNC28(1) |
	      FUNC44(slice_params->bit_size >> 3);
	FUNC59(vpu, reg, FUNC48(6));

	reg = FUNC1(picture->alternate_scan) |
	      FUNC23(picture->f_code[0][0]) |
	      FUNC24(picture->f_code[0][1]) |
	      FUNC21(picture->f_code[1][0]) |
	      FUNC22(picture->f_code[1][1]) |
	      FUNC32(1) |
	      FUNC31(1);
	FUNC59(vpu, reg, FUNC48(18));

	reg = FUNC42(0) |
	      FUNC43(0);
	FUNC59(vpu, reg, FUNC48(48));

	reg = FUNC2(8);
	FUNC59(vpu, reg, FUNC48(55));

	FUNC53(vpu, ctx);

	FUNC52(vpu, ctx, &src_buf->vb2_buf,
					&dst_buf->vb2_buf,
					sequence, picture, slice_params);

	FUNC51(ctx);

	reg = FUNC9(1);
	FUNC58(vpu, reg, FUNC48(1));
}