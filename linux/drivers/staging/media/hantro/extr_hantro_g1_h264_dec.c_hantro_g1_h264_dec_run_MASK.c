#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hantro_dev {int dummy; } ;
struct hantro_ctx {struct hantro_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  G1_REG_CONFIG ; 
 int FUNC0 (int) ; 
 int G1_REG_CONFIG_DEC_CLK_GATE_E ; 
 int G1_REG_CONFIG_DEC_INSWAP32_E ; 
 int FUNC1 (int) ; 
 int G1_REG_CONFIG_DEC_OUTSWAP32_E ; 
 int G1_REG_CONFIG_DEC_OUT_ENDIAN ; 
 int G1_REG_CONFIG_DEC_STRENDIAN_E ; 
 int G1_REG_CONFIG_DEC_STRSWAP32_E ; 
 int G1_REG_CONFIG_DEC_TIMEOUT_E ; 
 int /*<<< orphan*/  G1_REG_INTERRUPT ; 
 int /*<<< orphan*/  G1_REG_INTERRUPT_DEC_E ; 
 int /*<<< orphan*/  FUNC2 (struct hantro_ctx*) ; 
 scalar_t__ FUNC3 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hantro_dev*,int,int /*<<< orphan*/ ) ; 

void FUNC9(struct hantro_ctx *ctx)
{
	struct hantro_dev *vpu = ctx->dev;

	/* Prepare the H264 decoder context. */
	if (FUNC3(ctx))
		return;

	/* Configure hardware registers. */
	FUNC5(ctx);
	FUNC6(ctx);
	FUNC4(ctx);

	FUNC2(ctx);

	/* Start decoding! */
	FUNC8(vpu,
			   FUNC0(0xffu) |
			   G1_REG_CONFIG_DEC_TIMEOUT_E |
			   G1_REG_CONFIG_DEC_OUT_ENDIAN |
			   G1_REG_CONFIG_DEC_STRENDIAN_E |
			   FUNC1(16) |
			   G1_REG_CONFIG_DEC_OUTSWAP32_E |
			   G1_REG_CONFIG_DEC_INSWAP32_E |
			   G1_REG_CONFIG_DEC_STRSWAP32_E |
			   G1_REG_CONFIG_DEC_CLK_GATE_E,
			   G1_REG_CONFIG);
	FUNC7(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
}