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
struct tegra_xusb_padctl {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct tegra_xusb_padctl* FUNC0 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_padctl* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct tegra_xusb_padctl *FUNC6(struct device *dev)
{
	struct tegra_xusb_padctl *padctl;
	struct platform_device *pdev;
	struct device_node *np;

	np = FUNC3(dev->of_node, "nvidia,xusb-padctl", 0);
	if (!np)
		return FUNC0(-EINVAL);

	/*
	 * This is slightly ugly. A better implementation would be to keep a
	 * registry of pad controllers, but since there will almost certainly
	 * only ever be one per SoC that would be a little overkill.
	 */
	pdev = FUNC1(np);
	if (!pdev) {
		FUNC2(np);
		return FUNC0(-ENODEV);
	}

	FUNC2(np);

	padctl = FUNC4(pdev);
	if (!padctl) {
		FUNC5(&pdev->dev);
		return FUNC0(-EPROBE_DEFER);
	}

	return padctl;
}