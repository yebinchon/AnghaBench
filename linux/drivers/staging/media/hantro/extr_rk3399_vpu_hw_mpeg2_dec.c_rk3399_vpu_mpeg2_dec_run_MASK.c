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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PICT_FRAME ; 
 scalar_t__ PICT_TOP_FIELD ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS ; 
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_B ; 
 scalar_t__ V4L2_MPEG2_PICTURE_CODING_TYPE_I ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int) ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (int) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int) ; 
 int FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int FUNC36 (int) ; 
 int FUNC37 (int) ; 
 int FUNC38 (int) ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int FUNC40 (int /*<<< orphan*/ ) ; 
 int FUNC41 (int) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 int FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (int /*<<< orphan*/ ) ; 
 int FUNC45 (int /*<<< orphan*/ ) ; 
 int FUNC46 (int) ; 
 int FUNC47 (int /*<<< orphan*/ ) ; 
 int FUNC48 (int /*<<< orphan*/ ) ; 
 int FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (int) ; 
 int /*<<< orphan*/  FUNC51 (struct hantro_ctx*) ; 
 struct v4l2_ctrl_mpeg2_slice_params* FUNC52 (struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC53 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC54 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC55 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC56 (struct hantro_dev*,struct hantro_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct v4l2_mpeg2_sequence const*,struct v4l2_mpeg2_picture const*,struct v4l2_ctrl_mpeg2_slice_params const*) ; 
 int /*<<< orphan*/  FUNC57 (struct hantro_dev*,struct hantro_ctx*) ; 
 int FUNC58 (struct hantro_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC60 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC61(struct hantro_ctx *ctx)
{
	struct hantro_dev *vpu = ctx->dev;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
	const struct v4l2_mpeg2_sequence *sequence;
	const struct v4l2_mpeg2_picture *picture;
	u32 reg;

	src_buf = FUNC54(ctx);
	dst_buf = FUNC53(ctx);

	FUNC55(ctx);

	slice_params = FUNC52(ctx,
				       V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
	sequence = &slice_params->sequence;
	picture = &slice_params->picture;

	reg = FUNC6(0) |
	      FUNC19(0) |
	      FUNC27(1) |
	      FUNC14(0);
	FUNC60(vpu, reg, FUNC50(50));

	reg = FUNC30(1) |
	      FUNC46(slice_params->bit_size >> 3);
	FUNC60(vpu, reg, FUNC50(51));

	reg = FUNC4(8) |
	      FUNC44(0) |
	      FUNC45(0);
	FUNC60(vpu, reg, FUNC50(52));

	reg = FUNC16(5);
	FUNC60(vpu, reg, FUNC50(53));

	reg = FUNC20(1) |
	      FUNC21(1) |
	      FUNC17(1) |
	      FUNC12(1) |
	      FUNC18(1) |
	      FUNC13(1);
	FUNC60(vpu, reg, FUNC50(54));

	reg = FUNC10(0) |
	      FUNC15(16) |
	      FUNC8(0) |
	      FUNC7(0);
	FUNC60(vpu, reg, FUNC50(56));

	reg = FUNC43(0) |
	      FUNC37(!sequence->progressive_sequence) |
	      FUNC36(picture->picture_structure != PICT_FRAME) |
	      FUNC35(picture->picture_coding_type == V4L2_MPEG2_PICTURE_CODING_TYPE_B) |
	      FUNC38(picture->picture_coding_type != V4L2_MPEG2_PICTURE_CODING_TYPE_I) |
	      FUNC41(picture->picture_structure == PICT_TOP_FIELD) |
	      FUNC29(0) |
	      FUNC49(0) |
	      FUNC22(1) |
	      FUNC9(1);
	FUNC60(vpu, reg, FUNC50(57));

	reg = FUNC40(FUNC1(ctx->dst_fmt.width)) |
	      FUNC39(FUNC0(ctx->dst_fmt.height)) |
	      FUNC2(picture->alternate_scan) |
	      FUNC48(picture->top_field_first);
	FUNC60(vpu, reg, FUNC50(120));

	reg = FUNC47(slice_params->data_bit_offset) |
	      FUNC42(picture->q_scale_type) |
	      FUNC5(picture->concealment_motion_vectors) |
	      FUNC31(picture->intra_dc_precision) |
	      FUNC32(picture->intra_vlc_format) |
	      FUNC28(picture->frame_pred_frame_dct);
	FUNC60(vpu, reg, FUNC50(122));

	reg = FUNC3(picture->alternate_scan) |
	      FUNC25(picture->f_code[0][0]) |
	      FUNC26(picture->f_code[0][1]) |
	      FUNC23(picture->f_code[1][0]) |
	      FUNC24(picture->f_code[1][1]) |
	      FUNC34(1) |
	      FUNC33(1);
	FUNC60(vpu, reg, FUNC50(136));

	FUNC57(vpu, ctx);

	FUNC56(vpu, ctx, &src_buf->vb2_buf,
					 &dst_buf->vb2_buf,
					 sequence, picture, slice_params);

	/* Kick the watchdog and start decoding */
	FUNC51(ctx);

	reg = FUNC58(vpu, FUNC50(57)) | FUNC11(1);
	FUNC59(vpu, reg, FUNC50(57));
}