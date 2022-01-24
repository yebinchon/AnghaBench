#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int range; int value; } ;
struct TYPE_11__ {scalar_t__ level; } ;
struct v4l2_ctrl_vp8_frame_header {int flags; int version; TYPE_6__ coder_state; TYPE_5__ lf_header; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; scalar_t__ cpu; } ;
struct TYPE_9__ {TYPE_2__ segment_map; } ;
struct TYPE_7__ {size_t height; size_t width; } ;
struct hantro_ctx {TYPE_4__* codec_ops; TYPE_3__ vp8_dec; TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* reset ) (struct hantro_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER ; 
 int V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF ; 
 int /*<<< orphan*/  VDPU_REG_AXI_CTRL ; 
 int VDPU_REG_CONFIG_DEC_CLK_GATE_E ; 
 int VDPU_REG_CONFIG_DEC_INSWAP32_E ; 
 int VDPU_REG_CONFIG_DEC_IN_ENDIAN ; 
 int FUNC0 (int) ; 
 int VDPU_REG_CONFIG_DEC_OUTSWAP32_E ; 
 int VDPU_REG_CONFIG_DEC_OUT_ENDIAN ; 
 int VDPU_REG_CONFIG_DEC_STRENDIAN_E ; 
 int VDPU_REG_CONFIG_DEC_STRSWAP32_E ; 
 int VDPU_REG_CONFIG_DEC_TIMEOUT_E ; 
 int /*<<< orphan*/  VDPU_REG_DATA_ENDIAN ; 
 int FUNC1 (int) ; 
 int VDPU_REG_DEC_CTRL0_PIC_INTER_E ; 
 int VDPU_REG_DEC_CTRL4_BILIN_MC_E ; 
 int VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT ; 
 int /*<<< orphan*/  VDPU_REG_DEC_FORMAT ; 
 int /*<<< orphan*/  VDPU_REG_EN_FLAGS ; 
 int /*<<< orphan*/  VDPU_REG_VP8_DCT_START_BIT ; 
 scalar_t__ FUNC2 (struct v4l2_ctrl_vp8_frame_header const*) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC7 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC8 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC9 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC10 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC11 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC12 (struct hantro_ctx*) ; 
 struct v4l2_ctrl_vp8_frame_header* FUNC13 (struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct hantro_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hantro_ctx*) ; 
 int FUNC19 (struct hantro_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vp8_dec_bool_range ; 
 int /*<<< orphan*/  vp8_dec_bool_value ; 
 int /*<<< orphan*/  vp8_dec_filter_disable ; 
 int /*<<< orphan*/  vp8_dec_mb_height ; 
 int /*<<< orphan*/  vp8_dec_mb_height_ext ; 
 int /*<<< orphan*/  vp8_dec_mb_width ; 
 int /*<<< orphan*/  vp8_dec_mb_width_ext ; 
 int /*<<< orphan*/  vp8_dec_skip_mode ; 
 int /*<<< orphan*/  vp8_dec_start_dec ; 

void FUNC21(struct hantro_ctx *ctx)
{
	const struct v4l2_ctrl_vp8_frame_header *hdr;
	struct hantro_dev *vpu = ctx->dev;
	size_t height = ctx->dst_fmt.height;
	size_t width = ctx->dst_fmt.width;
	u32 mb_width, mb_height;
	u32 reg;

	FUNC14(ctx);

	hdr = FUNC13(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
	if (FUNC5(!hdr))
		return;

	/* Reset segment_map buffer in keyframe */
	if (FUNC2(hdr) && ctx->vp8_dec.segment_map.cpu)
		FUNC17(ctx->vp8_dec.segment_map.cpu, 0,
		       ctx->vp8_dec.segment_map.size);

	FUNC16(ctx, hdr);

	/*
	 * Extensive testing shows that the hardware does not properly
	 * clear the internal state from previous a decoding run. This
	 * causes corruption in decoded frames for multi-instance use cases.
	 * A soft reset before programming the registers has been found
	 * to resolve those problems.
	 */
	ctx->codec_ops->reset(ctx);

	reg = VDPU_REG_CONFIG_DEC_TIMEOUT_E
		| VDPU_REG_CONFIG_DEC_CLK_GATE_E;
	if (!FUNC2(hdr))
		reg |= VDPU_REG_DEC_CTRL0_PIC_INTER_E;
	FUNC20(vpu, reg, VDPU_REG_EN_FLAGS);

	reg = VDPU_REG_CONFIG_DEC_STRENDIAN_E
		| VDPU_REG_CONFIG_DEC_INSWAP32_E
		| VDPU_REG_CONFIG_DEC_STRSWAP32_E
		| VDPU_REG_CONFIG_DEC_OUTSWAP32_E
		| VDPU_REG_CONFIG_DEC_IN_ENDIAN
		| VDPU_REG_CONFIG_DEC_OUT_ENDIAN;
	FUNC20(vpu, reg, VDPU_REG_DATA_ENDIAN);

	reg = FUNC0(16);
	FUNC20(vpu, reg, VDPU_REG_AXI_CTRL);

	reg = FUNC1(10);
	FUNC20(vpu, reg, VDPU_REG_DEC_FORMAT);

	if (!(hdr->flags & V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF))
		FUNC15(vpu, &vp8_dec_skip_mode, 1);
	if (hdr->lf_header.level == 0)
		FUNC15(vpu, &vp8_dec_filter_disable, 1);

	/* Frame dimensions */
	mb_width = FUNC4(width);
	mb_height = FUNC3(height);

	FUNC15(vpu, &vp8_dec_mb_width, mb_width);
	FUNC15(vpu, &vp8_dec_mb_height, mb_height);
	FUNC15(vpu, &vp8_dec_mb_width_ext, mb_width >> 9);
	FUNC15(vpu, &vp8_dec_mb_height_ext, mb_height >> 8);

	/* Boolean decoder */
	FUNC15(vpu, &vp8_dec_bool_range, hdr->coder_state.range);
	FUNC15(vpu, &vp8_dec_bool_value, hdr->coder_state.value);

	reg = FUNC19(vpu, VDPU_REG_VP8_DCT_START_BIT);
	if (hdr->version != 3)
		reg |= VDPU_REG_DEC_CTRL4_VC1_HEIGHT_EXT;
	if (hdr->version & 0x3)
		reg |= VDPU_REG_DEC_CTRL4_BILIN_MC_E;
	FUNC20(vpu, reg, VDPU_REG_VP8_DCT_START_BIT);

	FUNC7(ctx, hdr);
	FUNC9(ctx, hdr);
	FUNC8(ctx, hdr);
	FUNC11(ctx, hdr);
	FUNC10(ctx, hdr);
	FUNC6(ctx, hdr);

	FUNC12(ctx);

	FUNC15(vpu, &vp8_dec_start_dec, 1);
}