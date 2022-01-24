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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct cdns_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct cdns_pcie* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct cdns_pcie *pcie = FUNC2(dev);
	int ret;

	ret = FUNC4(dev);
	if (ret < 0)
		FUNC1(dev, "pm_runtime_put_sync failed\n");

	FUNC3(dev);

	FUNC0(pcie);
}