#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct hantro_ctx {TYPE_3__* dev; TYPE_1__* codec_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  clocks; TYPE_2__* variant; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_clocks; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* run ) (struct hantro_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct hantro_ctx*) ; 
 struct vb2_v4l2_buffer* FUNC2 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct hantro_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hantro_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ; 

__attribute__((used)) static void FUNC7(void *priv)
{
	struct hantro_ctx *ctx = priv;
	struct vb2_v4l2_buffer *src, *dst;
	int ret;

	src = FUNC2(ctx);
	dst = FUNC1(ctx);

	ret = FUNC0(ctx->dev->variant->num_clocks, ctx->dev->clocks);
	if (ret)
		goto err_cancel_job;
	ret = FUNC4(ctx->dev->dev);
	if (ret < 0)
		goto err_cancel_job;

	FUNC6(src, dst, true);

	ctx->codec_ops->run(ctx);
	return;

err_cancel_job:
	FUNC3(ctx->dev, ctx, 0, VB2_BUF_STATE_ERROR);
}