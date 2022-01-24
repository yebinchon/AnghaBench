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
struct tegra_usb_phy {int /*<<< orphan*/  u_phy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct tegra_usb_phy* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_usb_phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct tegra_usb_phy *tegra_phy = FUNC0(pdev);

	FUNC2(&tegra_phy->u_phy);
	FUNC1(tegra_phy);

	return 0;
}