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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct ocelot_reset_context {TYPE_1__ restart_handler; int /*<<< orphan*/  cpu_ctrl; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct ocelot_reset_context* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocelot_restart_handle ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ocelot_reset_context *ctx;
	struct resource *res;

	struct device *dev = &pdev->dev;
	int err;

	ctx = FUNC4(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	ctx->base = FUNC3(dev, res);
	if (FUNC0(ctx->base))
		return FUNC1(ctx->base);

	ctx->cpu_ctrl = FUNC7("mscc,ocelot-cpu-syscon");
	if (FUNC0(ctx->cpu_ctrl))
		return FUNC1(ctx->cpu_ctrl);

	ctx->restart_handler.notifier_call = ocelot_restart_handle;
	ctx->restart_handler.priority = 192;
	err = FUNC6(&ctx->restart_handler);
	if (err)
		FUNC2(dev, "can't register restart notifier (err=%d)\n", err);

	return err;
}