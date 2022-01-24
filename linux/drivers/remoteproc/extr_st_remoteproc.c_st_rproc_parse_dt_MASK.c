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
struct st_rproc {void* clk; int /*<<< orphan*/  boot_offset; void* boot_base; int /*<<< orphan*/  clk_rate; void* pwr_reset; TYPE_1__* config; void* sw_reset; } ;
struct rproc {struct st_rproc* priv; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ pwr_reset; scalar_t__ sw_reset; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 struct rproc* FUNC8 (struct platform_device*) ; 
 void* FUNC9 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rproc *rproc = FUNC8(pdev);
	struct st_rproc *ddata = rproc->priv;
	struct device_node *np = dev->of_node;
	int err;

	if (ddata->config->sw_reset) {
		ddata->sw_reset = FUNC5(dev,
								   "sw_reset");
		if (FUNC0(ddata->sw_reset)) {
			FUNC3(dev, "Failed to get S/W Reset\n");
			return FUNC1(ddata->sw_reset);
		}
	}

	if (ddata->config->pwr_reset) {
		ddata->pwr_reset = FUNC5(dev,
								    "pwr_reset");
		if (FUNC0(ddata->pwr_reset)) {
			FUNC3(dev, "Failed to get Power Reset\n");
			return FUNC1(ddata->pwr_reset);
		}
	}

	ddata->clk = FUNC4(dev, NULL);
	if (FUNC0(ddata->clk)) {
		FUNC3(dev, "Failed to get clock\n");
		return FUNC1(ddata->clk);
	}

	err = FUNC6(np, "clock-frequency", &ddata->clk_rate);
	if (err) {
		FUNC3(dev, "failed to get clock frequency\n");
		return err;
	}

	ddata->boot_base = FUNC9(np, "st,syscfg");
	if (FUNC0(ddata->boot_base)) {
		FUNC3(dev, "Boot base not found\n");
		return FUNC1(ddata->boot_base);
	}

	err = FUNC7(np, "st,syscfg", 1,
					 &ddata->boot_offset);
	if (err) {
		FUNC3(dev, "Boot offset not found\n");
		return -EINVAL;
	}

	err = FUNC2(ddata->clk);
	if (err)
		FUNC3(dev, "failed to get clock\n");

	return err;
}