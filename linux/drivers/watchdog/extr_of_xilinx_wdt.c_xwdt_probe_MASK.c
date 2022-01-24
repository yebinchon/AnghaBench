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
typedef  int u32 ;
struct watchdog_device {int timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct xwdt_device {int wdt_interval; int /*<<< orphan*/ * base; int /*<<< orphan*/ * clk; int /*<<< orphan*/  spinlock; struct watchdog_device xilinx_wdt_wdd; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int XWT_TIMER_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 struct xwdt_device* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,struct watchdog_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct xwdt_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*,struct xwdt_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  xilinx_wdt_ident ; 
 int /*<<< orphan*/  xilinx_wdt_ops ; 
 int /*<<< orphan*/  xwdt_clk_disable_unprepare ; 
 int FUNC18 (struct xwdt_device*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int rc;
	u32 pfreq = 0, enable_once = 0;
	struct xwdt_device *xdev;
	struct watchdog_device *xilinx_wdt_wdd;

	xdev = FUNC10(dev, sizeof(*xdev), GFP_KERNEL);
	if (!xdev)
		return -ENOMEM;

	xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
	xilinx_wdt_wdd->info = &xilinx_wdt_ident;
	xilinx_wdt_wdd->ops = &xilinx_wdt_ops;
	xilinx_wdt_wdd->parent = dev;

	xdev->base = FUNC11(pdev, 0);
	if (FUNC0(xdev->base))
		return FUNC1(xdev->base);

	rc = FUNC13(dev->of_node, "xlnx,wdt-interval",
				  &xdev->wdt_interval);
	if (rc)
		FUNC7(dev, "Parameter \"xlnx,wdt-interval\" not found\n");

	rc = FUNC13(dev->of_node, "xlnx,wdt-enable-once",
				  &enable_once);
	if (rc)
		FUNC7(dev,
			 "Parameter \"xlnx,wdt-enable-once\" not found\n");

	FUNC17(xilinx_wdt_wdd, enable_once);

	xdev->clk = FUNC9(dev, NULL);
	if (FUNC0(xdev->clk)) {
		if (FUNC1(xdev->clk) != -ENOENT)
			return FUNC1(xdev->clk);

		/*
		 * Clock framework support is optional, continue on
		 * anyways if we don't find a matching clock.
		 */
		xdev->clk = NULL;

		rc = FUNC13(dev->of_node, "clock-frequency",
					  &pfreq);
		if (rc)
			FUNC7(dev,
				 "The watchdog clock freq cannot be obtained\n");
	} else {
		pfreq = FUNC3(xdev->clk);
	}

	/*
	 * Twice of the 2^wdt_interval / freq  because the first wdt overflow is
	 * ignored (interrupt), reset is only generated at second wdt overflow
	 */
	if (pfreq && xdev->wdt_interval)
		xilinx_wdt_wdd->timeout = 2 * ((1 << xdev->wdt_interval) /
					  pfreq);

	FUNC15(&xdev->spinlock);
	FUNC16(xilinx_wdt_wdd, xdev);

	rc = FUNC4(xdev->clk);
	if (rc) {
		FUNC5(dev, "unable to enable clock\n");
		return rc;
	}
	rc = FUNC8(dev, xwdt_clk_disable_unprepare,
				      xdev->clk);
	if (rc)
		return rc;

	rc = FUNC18(xdev);
	if (rc == XWT_TIMER_FAILED) {
		FUNC5(dev, "SelfTest routine error\n");
		return rc;
	}

	rc = FUNC12(dev, xilinx_wdt_wdd);
	if (rc)
		return rc;

	FUNC2(xdev->clk);

	FUNC6(dev, "Xilinx Watchdog Timer at %p with timeout %ds\n",
		 xdev->base, xilinx_wdt_wdd->timeout);

	FUNC14(pdev, xdev);

	return 0;
}