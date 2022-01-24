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
struct tegra_vde {int /*<<< orphan*/  iram_pool; scalar_t__ iram; int /*<<< orphan*/  miscdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tegra_vde* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_vde*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_vde*) ; 
 int FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct tegra_vde *vde = FUNC3(pdev);
	struct device *dev = &pdev->dev;
	int err;

	if (!FUNC6(dev)) {
		err = FUNC9(dev);
		if (err)
			return err;
	}

	FUNC5(dev);
	FUNC4(dev);

	FUNC2(&vde->miscdev);

	FUNC7(vde);
	FUNC8(vde);

	FUNC0(vde->iram_pool, (unsigned long)vde->iram,
		      FUNC1(vde->iram_pool));

	return 0;
}