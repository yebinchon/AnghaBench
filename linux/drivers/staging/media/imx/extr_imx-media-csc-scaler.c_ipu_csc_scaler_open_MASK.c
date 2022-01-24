#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipu_csc_scaler_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/ * ctrl_handler; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; void** q_data; int /*<<< orphan*/  ctrl_hdlr; struct ipu_csc_scaler_priv* priv; int /*<<< orphan*/  rot_mode; } ;
struct file {TYPE_1__* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPU_ROTATE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t V4L2_M2M_DST ; 
 size_t V4L2_M2M_SRC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct ipu_csc_scaler_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipu_csc_scaler_ctx*) ; 
 void* ipu_csc_scaler_q_data_default ; 
 int /*<<< orphan*/  ipu_csc_scaler_queue_init ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_csc_scaler_ctx*) ; 
 struct ipu_csc_scaler_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ipu_csc_scaler_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct file*) ; 
 struct ipu_csc_scaler_priv* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct ipu_csc_scaler_priv *priv = FUNC13(file);
	struct ipu_csc_scaler_ctx *ctx = NULL;
	int ret;

	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->rot_mode = IPU_ROTATE_NONE;

	FUNC9(&ctx->fh, FUNC12(file));
	file->private_data = &ctx->fh;
	FUNC6(&ctx->fh);
	ctx->priv = priv;

	ctx->fh.m2m_ctx = FUNC10(priv->m2m_dev, ctx,
					    &ipu_csc_scaler_queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto err_ctx;
	}

	ret = FUNC3(ctx);
	if (ret)
		goto err_ctrls;

	ctx->fh.ctrl_handler = &ctx->ctrl_hdlr;

	ctx->q_data[V4L2_M2M_SRC] = ipu_csc_scaler_q_data_default;
	ctx->q_data[V4L2_M2M_DST] = ipu_csc_scaler_q_data_default;

	FUNC2(priv->dev, "Created instance %p, m2m_ctx: %p\n", ctx,
		ctx->fh.m2m_ctx);

	return 0;

err_ctrls:
	FUNC11(ctx->fh.m2m_ctx);
err_ctx:
	FUNC7(&ctx->fh);
	FUNC8(&ctx->fh);
	FUNC4(ctx);
	return ret;
}