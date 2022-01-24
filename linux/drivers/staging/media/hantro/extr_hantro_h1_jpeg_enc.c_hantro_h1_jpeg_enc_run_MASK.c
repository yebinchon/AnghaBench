#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct hantro_jpeg_ctx {int /*<<< orphan*/  quality; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buffer; } ;
struct hantro_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct hantro_ctx {TYPE_2__ src_fmt; int /*<<< orphan*/  jpeg_quality; TYPE_1__ dst_fmt; struct hantro_dev* dev; } ;
typedef  int /*<<< orphan*/  jpeg_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  H1_REG_AXI_CTRL ; 
 int FUNC0 (int) ; 
 int H1_REG_AXI_CTRL_INPUT_SWAP16 ; 
 int H1_REG_AXI_CTRL_INPUT_SWAP32 ; 
 int H1_REG_AXI_CTRL_INPUT_SWAP8 ; 
 int H1_REG_AXI_CTRL_OUTPUT_SWAP16 ; 
 int H1_REG_AXI_CTRL_OUTPUT_SWAP32 ; 
 int H1_REG_AXI_CTRL_OUTPUT_SWAP8 ; 
 int /*<<< orphan*/  H1_REG_ENC_CTRL ; 
 int H1_REG_ENC_CTRL_ENC_MODE_JPEG ; 
 int H1_REG_ENC_CTRL_EN_BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int H1_REG_ENC_PIC_INTRA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC6 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct hantro_dev*,struct hantro_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hantro_dev*,struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct hantro_jpeg_ctx*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hantro_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct hantro_jpeg_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC18(struct hantro_ctx *ctx)
{
	struct hantro_dev *vpu = ctx->dev;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	struct hantro_jpeg_ctx jpeg_ctx;
	u32 reg;

	src_buf = FUNC7(ctx);
	dst_buf = FUNC6(ctx);

	FUNC13(ctx);

	FUNC14(&jpeg_ctx, 0, sizeof(jpeg_ctx));
	jpeg_ctx.buffer = FUNC15(&dst_buf->vb2_buf, 0);
	jpeg_ctx.width = ctx->dst_fmt.width;
	jpeg_ctx.height = ctx->dst_fmt.height;
	jpeg_ctx.quality = ctx->jpeg_quality;
	FUNC12(&jpeg_ctx);

	/* Switch to JPEG encoder mode before writing registers */
	FUNC17(vpu, H1_REG_ENC_CTRL_ENC_MODE_JPEG,
			   H1_REG_ENC_CTRL);

	FUNC10(vpu, ctx);
	FUNC8(vpu, ctx, &src_buf->vb2_buf);
	FUNC9(vpu,
				      FUNC11(&jpeg_ctx, 0),
				      FUNC11(&jpeg_ctx, 1));

	reg = H1_REG_AXI_CTRL_OUTPUT_SWAP16
		| H1_REG_AXI_CTRL_INPUT_SWAP16
		| FUNC0(16)
		| H1_REG_AXI_CTRL_OUTPUT_SWAP32
		| H1_REG_AXI_CTRL_INPUT_SWAP32
		| H1_REG_AXI_CTRL_OUTPUT_SWAP8
		| H1_REG_AXI_CTRL_INPUT_SWAP8;
	/* Make sure that all registers are written at this point. */
	FUNC16(vpu, reg, H1_REG_AXI_CTRL);

	reg = FUNC2(FUNC4(ctx->src_fmt.width))
		| FUNC1(FUNC3(ctx->src_fmt.height))
		| H1_REG_ENC_CTRL_ENC_MODE_JPEG
		| H1_REG_ENC_PIC_INTRA
		| H1_REG_ENC_CTRL_EN_BIT;

	FUNC5(ctx);

	FUNC16(vpu, reg, H1_REG_ENC_CTRL);
}