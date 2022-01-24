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
struct TYPE_2__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct syscon_reboot_context {int offset; int value; int mask; TYPE_1__ restart_handler; int /*<<< orphan*/  map; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct syscon_reboot_context* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  syscon_restart_handle ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct syscon_reboot_context *ctx;
	struct device *dev = &pdev->dev;
	int mask_err, value_err;
	int err;

	ctx = FUNC3(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->map = FUNC6(dev->of_node, "regmap");
	if (FUNC0(ctx->map))
		return FUNC1(ctx->map);

	if (FUNC4(pdev->dev.of_node, "offset", &ctx->offset))
		return -EINVAL;

	value_err = FUNC4(pdev->dev.of_node, "value", &ctx->value);
	mask_err = FUNC4(pdev->dev.of_node, "mask", &ctx->mask);
	if (value_err && mask_err) {
		FUNC2(dev, "unable to read 'value' and 'mask'");
		return -EINVAL;
	}

	if (value_err) {
		/* support old binding */
		ctx->value = ctx->mask;
		ctx->mask = 0xFFFFFFFF;
	} else if (mask_err) {
		/* support value without mask*/
		ctx->mask = 0xFFFFFFFF;
	}

	ctx->restart_handler.notifier_call = syscon_restart_handle;
	ctx->restart_handler.priority = 192;
	err = FUNC5(&ctx->restart_handler);
	if (err)
		FUNC2(dev, "can't register restart notifier (err=%d)\n", err);

	return err;
}