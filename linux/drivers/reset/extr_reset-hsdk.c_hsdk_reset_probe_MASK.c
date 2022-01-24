#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int of_reset_n_cells; int /*<<< orphan*/  nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct hsdk_rst {TYPE_1__ rcdev; int /*<<< orphan*/  lock; void* regs_rst; void* regs_ctl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSDK_MAX_RESETS ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* FUNC2 (TYPE_2__*,struct resource*) ; 
 struct hsdk_rst* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsdk_reset_ops ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct hsdk_rst *rst;
	struct resource *mem;

	rst = FUNC3(&pdev->dev, sizeof(*rst), GFP_KERNEL);
	if (!rst)
		return -ENOMEM;

	mem = FUNC4(pdev, IORESOURCE_MEM, 0);
	rst->regs_ctl = FUNC2(&pdev->dev, mem);
	if (FUNC0(rst->regs_ctl))
		return FUNC1(rst->regs_ctl);

	mem = FUNC4(pdev, IORESOURCE_MEM, 1);
	rst->regs_rst = FUNC2(&pdev->dev, mem);
	if (FUNC0(rst->regs_rst))
		return FUNC1(rst->regs_rst);

	FUNC6(&rst->lock);

	rst->rcdev.owner = THIS_MODULE;
	rst->rcdev.ops = &hsdk_reset_ops;
	rst->rcdev.of_node = pdev->dev.of_node;
	rst->rcdev.nr_resets = HSDK_MAX_RESETS;
	rst->rcdev.of_reset_n_cells = 1;

	return FUNC5(&rst->rcdev);
}