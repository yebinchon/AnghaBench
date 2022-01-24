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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; int /*<<< orphan*/ * ops; scalar_t__ nr_resets; int /*<<< orphan*/  owner; } ;
struct pistachio_reset_data {TYPE_1__ rcdev; int /*<<< orphan*/  periph_regs; } ;
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PISTACHIO_RESET_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct pistachio_reset_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  pistachio_reset_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pistachio_reset_data *rd;
	struct device *dev = &pdev->dev;
	struct device_node *np = pdev->dev.of_node;

	rd = FUNC2(dev, sizeof(*rd), GFP_KERNEL);
	if (!rd)
		return -ENOMEM;

	rd->periph_regs = FUNC4(np->parent);
	if (FUNC0(rd->periph_regs))
		return FUNC1(rd->periph_regs);

	rd->rcdev.owner = THIS_MODULE;
	rd->rcdev.nr_resets = PISTACHIO_RESET_MAX + 1;
	rd->rcdev.ops = &pistachio_reset_ops;
	rd->rcdev.of_node = np;

	return FUNC3(dev, &rd->rcdev);
}