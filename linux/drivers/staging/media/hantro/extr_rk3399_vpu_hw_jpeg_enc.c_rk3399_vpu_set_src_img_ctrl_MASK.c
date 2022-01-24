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
struct v4l2_pix_format_mplane {int /*<<< orphan*/  width; } ;
struct hantro_dev {int dummy; } ;
struct hantro_ctx {TYPE_1__* vpu_src_fmt; struct v4l2_pix_format_mplane src_fmt; } ;
struct TYPE_2__ {int /*<<< orphan*/  enc_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  VEPU_REG_ENC_CTRL1 ; 
 int /*<<< orphan*/  VEPU_REG_ENC_OVER_FILL_STRM_OFFSET ; 
 int /*<<< orphan*/  VEPU_REG_INPUT_LUMA_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hantro_dev *vpu,
					struct hantro_ctx *ctx)
{
	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
	u32 reg;

	/*
	 * The pix fmt width/height are already macroblock aligned
	 * by .vidioc_s_fmt_vid_cap_mplane() callback
	 */
	reg = FUNC3(pix_fmt->width);
	FUNC4(vpu, reg, VEPU_REG_INPUT_LUMA_INFO);

	reg = FUNC2(0) |
	      FUNC1(0);
	/*
	 * This register controls the input crop, as the offset
	 * from the right/bottom within the last macroblock. The offset from the
	 * right must be divided by 4 and so the crop must be aligned to 4 pixels
	 * horizontally.
	 */
	FUNC4(vpu, reg, VEPU_REG_ENC_OVER_FILL_STRM_OFFSET);

	reg = FUNC0(ctx->vpu_src_fmt->enc_fmt);
	FUNC4(vpu, reg, VEPU_REG_ENC_CTRL1);
}