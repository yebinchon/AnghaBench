#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {TYPE_1__* private_data; } ;
struct cedrus_dev {int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  m2m_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct cedrus_ctx {int /*<<< orphan*/  hdl; TYPE_1__ fh; struct cedrus_dev* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cedrus_dev*,struct cedrus_ctx*) ; 
 int /*<<< orphan*/  cedrus_queue_init ; 
 int /*<<< orphan*/  FUNC3 (struct cedrus_ctx*) ; 
 struct cedrus_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct cedrus_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 struct cedrus_dev* FUNC12 (struct file*) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct cedrus_dev *dev = FUNC12(file);
	struct cedrus_ctx *ctx = NULL;
	int ret;

	if (FUNC5(&dev->dev_mutex))
		return -ERESTARTSYS;

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		FUNC6(&dev->dev_mutex);
		return -ENOMEM;
	}

	FUNC9(&ctx->fh, FUNC11(file));
	file->private_data = &ctx->fh;
	ctx->dev = dev;

	ret = FUNC2(dev, ctx);
	if (ret)
		goto err_free;

	ctx->fh.m2m_ctx = FUNC10(dev->m2m_dev, ctx,
					    &cedrus_queue_init);
	if (FUNC0(ctx->fh.m2m_ctx)) {
		ret = FUNC1(ctx->fh.m2m_ctx);
		goto err_ctrls;
	}

	FUNC8(&ctx->fh);

	FUNC6(&dev->dev_mutex);

	return 0;

err_ctrls:
	FUNC7(&ctx->hdl);
err_free:
	FUNC3(ctx);
	FUNC6(&dev->dev_mutex);

	return ret;
}