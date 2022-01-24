#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct meson_reset {TYPE_2__ rcdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int BITS_PER_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int REG_COUNT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 struct meson_reset* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  meson_reset_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct meson_reset*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct meson_reset *data;
	struct resource *res;

	data = FUNC3(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	data->reg_base = FUNC2(&pdev->dev, res);
	if (FUNC0(data->reg_base))
		return FUNC1(data->reg_base);

	FUNC6(pdev, data);

	FUNC7(&data->lock);

	data->rcdev.owner = THIS_MODULE;
	data->rcdev.nr_resets = REG_COUNT * BITS_PER_REG;
	data->rcdev.ops = &meson_reset_ops;
	data->rcdev.of_node = pdev->dev.of_node;

	return FUNC4(&pdev->dev, &data->rcdev);
}