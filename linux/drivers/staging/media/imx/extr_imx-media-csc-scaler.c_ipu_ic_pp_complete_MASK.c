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
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct ipu_image_convert_run {scalar_t__ status; } ;
struct ipu_csc_scaler_priv {int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; int /*<<< orphan*/  sequence; struct ipu_csc_scaler_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipu_image_convert_run *run, void *_ctx)
{
	struct ipu_csc_scaler_ctx *ctx = _ctx;
	struct ipu_csc_scaler_priv *priv = ctx->priv;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;

	src_buf = FUNC5(ctx->fh.m2m_ctx);
	dst_buf = FUNC3(ctx->fh.m2m_ctx);

	FUNC1(src_buf, dst_buf, true);

	src_buf->sequence = ctx->sequence++;
	dst_buf->sequence = src_buf->sequence;

	FUNC2(src_buf, run->status ? VB2_BUF_STATE_ERROR :
						 VB2_BUF_STATE_DONE);
	FUNC2(dst_buf, run->status ? VB2_BUF_STATE_ERROR :
						 VB2_BUF_STATE_DONE);

	FUNC4(priv->m2m_dev, ctx->fh.m2m_ctx);
	FUNC0(run);
}