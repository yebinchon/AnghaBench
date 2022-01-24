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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_wp_data {int /*<<< orphan*/  base; int /*<<< orphan*/  phys_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct platform_device *pdev, struct hdmi_wp_data *wp)
{
	struct resource *res;

	res = FUNC4(pdev, IORESOURCE_MEM, "wp");
	if (!res) {
		FUNC0("can't get WP mem resource\n");
		return -EINVAL;
	}
	wp->phys_base = res->start;

	wp->base = FUNC3(&pdev->dev, res);
	if (FUNC1(wp->base)) {
		FUNC0("can't ioremap HDMI WP\n");
		return FUNC2(wp->base);
	}

	return 0;
}