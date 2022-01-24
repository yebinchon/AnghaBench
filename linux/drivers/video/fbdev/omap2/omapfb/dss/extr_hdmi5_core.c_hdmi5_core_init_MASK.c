#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_core_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct platform_device *pdev, struct hdmi_core_data *core)
{
	struct resource *res;

	res = FUNC4(pdev, IORESOURCE_MEM, "core");
	if (!res) {
		FUNC0("can't get CORE IORESOURCE_MEM HDMI\n");
		return -EINVAL;
	}

	core->base = FUNC3(&pdev->dev, res);
	if (FUNC1(core->base)) {
		FUNC0("can't ioremap HDMI core\n");
		return FUNC2(core->base);
	}

	return 0;
}