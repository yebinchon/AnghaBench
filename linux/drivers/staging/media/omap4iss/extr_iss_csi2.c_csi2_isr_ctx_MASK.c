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
typedef  int u16 ;
struct iss_pipeline {int /*<<< orphan*/  frame_number; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct iss_csi2_device {scalar_t__ frame_skip; int output; int /*<<< orphan*/  regs1; int /*<<< orphan*/  iss; TYPE_1__ subdev; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;
struct iss_csi2_ctx_cfg {unsigned int ctxnum; int frame; int /*<<< orphan*/  format_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int CSI2_CTX_CTRL2_FRAME_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int CSI2_CTX_IRQ_FE ; 
 int CSI2_CTX_IRQ_FS ; 
 int CSI2_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_csi2_device*,struct iss_csi2_ctx_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_csi2_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_csi2_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct iss_csi2_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iss_pipeline* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct iss_csi2_device *csi2,
			 struct iss_csi2_ctx_cfg *ctx)
{
	unsigned int n = ctx->ctxnum;
	u32 status;

	status = FUNC8(csi2->iss, csi2->regs1, FUNC1(n));
	FUNC9(csi2->iss, csi2->regs1, FUNC1(n), status);

	if (FUNC10(&csi2->wait, &csi2->stopping))
		return;

	/* Propagate frame number */
	if (status & CSI2_CTX_IRQ_FS) {
		struct iss_pipeline *pipe =
				     FUNC11(&csi2->subdev.entity);
		u16 frame;
		u16 delta;

		frame = FUNC8(csi2->iss, csi2->regs1,
				     FUNC0(ctx->ctxnum))
		      >> CSI2_CTX_CTRL2_FRAME_SHIFT;

		if (frame == 0) {
			/* A zero value means that the counter isn't implemented
			 * by the source. Increment the frame number in software
			 * in that case.
			 */
			FUNC3(&pipe->frame_number);
		} else {
			/* Extend the 16 bit frame number to 32 bits by
			 * computing the delta between two consecutive CSI2
			 * frame numbers and adding it to the software frame
			 * number. The hardware counter starts at 1 and wraps
			 * from 0xffff to 1 without going through 0, so subtract
			 * 1 when the counter wraps.
			 */
			delta = frame - ctx->frame;
			if (frame < ctx->frame)
				delta--;
			ctx->frame = frame;

			FUNC2(delta, &pipe->frame_number);
		}
	}

	if (!(status & CSI2_CTX_IRQ_FE))
		return;

	/* Skip interrupts until we reach the frame skip count. The CSI2 will be
	 * automatically disabled, as the frame skip count has been programmed
	 * in the CSI2_CTx_CTRL1::COUNT field, so re-enable it.
	 *
	 * It would have been nice to rely on the FRAME_NUMBER interrupt instead
	 * but it turned out that the interrupt is only generated when the CSI2
	 * writes to memory (the CSI2_CTx_CTRL1::COUNT field is decreased
	 * correctly and reaches 0 when data is forwarded to the video port only
	 * but no interrupt arrives). Maybe a CSI2 hardware bug.
	 */
	if (csi2->frame_skip) {
		csi2->frame_skip--;
		if (csi2->frame_skip == 0) {
			ctx->format_id = FUNC6(csi2);
			FUNC4(csi2, ctx);
			FUNC5(csi2, n, 1);
		}
		return;
	}

	if (csi2->output & CSI2_OUTPUT_MEMORY)
		FUNC7(csi2);
}