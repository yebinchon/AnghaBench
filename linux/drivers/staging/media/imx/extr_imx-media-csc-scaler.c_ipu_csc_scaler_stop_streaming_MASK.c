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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; scalar_t__ sequence; int /*<<< orphan*/ * icc; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ipu_csc_scaler_ctx* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC5(struct vb2_queue *q)
{
	struct ipu_csc_scaler_ctx *ctx = FUNC4(q);
	struct vb2_v4l2_buffer *buf;

	if (ctx->icc) {
		FUNC0(ctx->icc);
		ctx->icc = NULL;
	}

	ctx->sequence = 0;

	if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
		while ((buf = FUNC3(ctx->fh.m2m_ctx)))
			FUNC1(buf, VB2_BUF_STATE_ERROR);
	} else {
		while ((buf = FUNC2(ctx->fh.m2m_ctx)))
			FUNC1(buf, VB2_BUF_STATE_ERROR);
	}
}