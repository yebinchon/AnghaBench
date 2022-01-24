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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ video2_pll; scalar_t__ video1_pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ dss ; 
 int dss_initialized ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct platform_device *pdev = FUNC5(dev);

	dss_initialized = false;

	FUNC0(&pdev->dev, NULL);

	if (dss.video1_pll)
		FUNC3(dss.video1_pll);

	if (dss.video2_pll)
		FUNC3(dss.video2_pll);

	FUNC2(pdev);

	FUNC4(&pdev->dev);

	FUNC1();
}