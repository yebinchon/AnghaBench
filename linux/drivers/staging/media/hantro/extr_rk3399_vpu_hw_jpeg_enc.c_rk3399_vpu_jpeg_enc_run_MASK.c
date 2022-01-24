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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEPU_REG_AXI_CTRL ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  VEPU_REG_DATA_ENDIAN ; 
 int VEPU_REG_ENCODE_ENABLE ; 
 int VEPU_REG_ENCODE_FORMAT_JPEG ; 
 int /*<<< orphan*/  VEPU_REG_ENCODE_START ; 
 int VEPU_REG_FRAME_TYPE_INTRA ; 
 int VEPU_REG_INPUT_SWAP16 ; 
 int VEPU_REG_INPUT_SWAP32 ; 
 int VEPU_REG_INPUT_SWAP8 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VEPU_REG_OUTPUT_SWAP16 ; 
 int VEPU_REG_OUTPUT_SWAP32 ; 
 int VEPU_REG_OUTPUT_SWAP8 ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC6 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct hantro_jpeg_ctx*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hantro_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct hantro_jpeg_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hantro_dev*,struct hantro_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hantro_dev*,struct hantro_ctx*) ; 
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

	FUNC10(ctx);

	FUNC11(&jpeg_ctx, 0, sizeof(jpeg_ctx));
	jpeg_ctx.buffer = FUNC15(&dst_buf->vb2_buf, 0);
	jpeg_ctx.width = ctx->dst_fmt.width;
	jpeg_ctx.height = ctx->dst_fmt.height;
	jpeg_ctx.quality = ctx->jpeg_quality;
	FUNC9(&jpeg_ctx);

	/* Switch to JPEG encoder mode before writing registers */
	FUNC17(vpu, VEPU_REG_ENCODE_FORMAT_JPEG,
			   VEPU_REG_ENCODE_START);

	FUNC14(vpu, ctx);
	FUNC12(vpu, ctx, &src_buf->vb2_buf);
	FUNC13(vpu,
				       FUNC8(&jpeg_ctx, 0),
				       FUNC8(&jpeg_ctx, 1));

	reg = VEPU_REG_OUTPUT_SWAP32
		| VEPU_REG_OUTPUT_SWAP16
		| VEPU_REG_OUTPUT_SWAP8
		| VEPU_REG_INPUT_SWAP8
		| VEPU_REG_INPUT_SWAP16
		| VEPU_REG_INPUT_SWAP32;
	/* Make sure that all registers are written at this point. */
	FUNC16(vpu, reg, VEPU_REG_DATA_ENDIAN);

	reg = FUNC2(16);
	FUNC17(vpu, reg, VEPU_REG_AXI_CTRL);

	reg = FUNC4(FUNC1(ctx->src_fmt.width))
		| FUNC3(FUNC0(ctx->src_fmt.height))
		| VEPU_REG_FRAME_TYPE_INTRA
		| VEPU_REG_ENCODE_FORMAT_JPEG
		| VEPU_REG_ENCODE_ENABLE;

	/* Kick the watchdog and start encoding */
	FUNC5(ctx);
	FUNC16(vpu, reg, VEPU_REG_ENCODE_START);
}