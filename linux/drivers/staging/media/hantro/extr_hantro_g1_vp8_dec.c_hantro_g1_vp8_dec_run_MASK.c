#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  range; } ;
struct TYPE_9__ {scalar_t__ level; } ;
struct v4l2_ctrl_vp8_frame_header {int flags; int version; TYPE_5__ coder_state; TYPE_4__ lf_header; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; scalar_t__ cpu; } ;
struct TYPE_8__ {TYPE_2__ segment_map; } ;
struct TYPE_6__ {size_t height; size_t width; } ;
struct hantro_ctx {TYPE_3__ vp8_dec; TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  G1_REG_CONFIG ; 
 int G1_REG_CONFIG_DEC_CLK_GATE_E ; 
 int G1_REG_CONFIG_DEC_INSWAP32_E ; 
 int G1_REG_CONFIG_DEC_IN_ENDIAN ; 
 int FUNC0 (int) ; 
 int G1_REG_CONFIG_DEC_OUTSWAP32_E ; 
 int G1_REG_CONFIG_DEC_OUT_ENDIAN ; 
 int G1_REG_CONFIG_DEC_STRENDIAN_E ; 
 int G1_REG_CONFIG_DEC_STRSWAP32_E ; 
 int G1_REG_CONFIG_DEC_TIMEOUT_E ; 
 int /*<<< orphan*/  G1_REG_DEC_CTRL0 ; 
 int FUNC1 (int) ; 
 int G1_REG_DEC_CTRL0_FILTERING_DIS ; 
 int G1_REG_DEC_CTRL0_PIC_INTER_E ; 
 int G1_REG_DEC_CTRL0_SKIP_MODE ; 
 int /*<<< orphan*/  G1_REG_DEC_CTRL1 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  G1_REG_DEC_CTRL2 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G1_REG_DEC_CTRL4 ; 
 int G1_REG_DEC_CTRL4_BILIN_MC_E ; 
 int G1_REG_DEC_CTRL4_VC1_HEIGHT_EXT ; 
 int /*<<< orphan*/  G1_REG_INTERRUPT ; 
 int /*<<< orphan*/  G1_REG_INTERRUPT_DEC_E ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER ; 
 int V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF ; 
 scalar_t__ FUNC8 (struct v4l2_ctrl_vp8_frame_header const*) ; 
 int FUNC9 (size_t) ; 
 int FUNC10 (size_t) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC13 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC14 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC15 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC16 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC17 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC18 (struct hantro_ctx*) ; 
 struct v4l2_ctrl_vp8_frame_header* FUNC19 (struct hantro_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC21 (struct hantro_ctx*,struct v4l2_ctrl_vp8_frame_header const*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC25(struct hantro_ctx *ctx)
{
	const struct v4l2_ctrl_vp8_frame_header *hdr;
	struct hantro_dev *vpu = ctx->dev;
	size_t height = ctx->dst_fmt.height;
	size_t width = ctx->dst_fmt.width;
	u32 mb_width, mb_height;
	u32 reg;

	FUNC20(ctx);

	hdr = FUNC19(ctx, V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER);
	if (FUNC11(!hdr))
		return;

	/* Reset segment_map buffer in keyframe */
	if (FUNC8(hdr) && ctx->vp8_dec.segment_map.cpu)
		FUNC22(ctx->vp8_dec.segment_map.cpu, 0,
		       ctx->vp8_dec.segment_map.size);

	FUNC21(ctx, hdr);

	reg = G1_REG_CONFIG_DEC_TIMEOUT_E |
	      G1_REG_CONFIG_DEC_STRENDIAN_E |
	      G1_REG_CONFIG_DEC_INSWAP32_E |
	      G1_REG_CONFIG_DEC_STRSWAP32_E |
	      G1_REG_CONFIG_DEC_OUTSWAP32_E |
	      G1_REG_CONFIG_DEC_CLK_GATE_E |
	      G1_REG_CONFIG_DEC_IN_ENDIAN |
	      G1_REG_CONFIG_DEC_OUT_ENDIAN |
	      FUNC0(16);
	FUNC24(vpu, reg, G1_REG_CONFIG);

	reg = FUNC1(10);
	if (!FUNC8(hdr))
		reg |= G1_REG_DEC_CTRL0_PIC_INTER_E;
	if (!(hdr->flags & V4L2_VP8_FRAME_HEADER_FLAG_MB_NO_SKIP_COEFF))
		reg |= G1_REG_DEC_CTRL0_SKIP_MODE;
	if (hdr->lf_header.level == 0)
		reg |= G1_REG_DEC_CTRL0_FILTERING_DIS;
	FUNC24(vpu, reg, G1_REG_DEC_CTRL0);

	/* Frame dimensions */
	mb_width = FUNC10(width);
	mb_height = FUNC9(height);
	reg = FUNC4(mb_width) |
	      FUNC2(mb_height) |
	      FUNC5(mb_width >> 9) |
	      FUNC3(mb_height >> 8);
	FUNC24(vpu, reg, G1_REG_DEC_CTRL1);

	/* Boolean decoder */
	reg = FUNC6(hdr->coder_state.range)
		| FUNC7(hdr->coder_state.value);
	FUNC24(vpu, reg, G1_REG_DEC_CTRL2);

	reg = 0;
	if (hdr->version != 3)
		reg |= G1_REG_DEC_CTRL4_VC1_HEIGHT_EXT;
	if (hdr->version & 0x3)
		reg |= G1_REG_DEC_CTRL4_BILIN_MC_E;
	FUNC24(vpu, reg, G1_REG_DEC_CTRL4);

	FUNC13(ctx, hdr);
	FUNC15(ctx, hdr);
	FUNC14(ctx, hdr);
	FUNC17(ctx, hdr);
	FUNC16(ctx, hdr);
	FUNC12(ctx, hdr);

	FUNC18(ctx);

	FUNC23(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
}