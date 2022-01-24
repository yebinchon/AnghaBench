#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  status; struct device* parent; int /*<<< orphan*/  bootstatus; } ;

/* Variables and functions */
 int COUNT_ENAB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int WDOG_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  pnx4008_clk_disable_unprepare ; 
 TYPE_1__ pnx4008_wdd ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  wdt_base ; 
 int /*<<< orphan*/  wdt_clk ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret = 0;

	FUNC12(&pnx4008_wdd, heartbeat, dev);

	wdt_base = FUNC8(pdev, 0);
	if (FUNC0(wdt_base))
		return FUNC1(wdt_base);

	wdt_clk = FUNC7(dev, NULL);
	if (FUNC0(wdt_clk))
		return FUNC1(wdt_clk);

	ret = FUNC4(wdt_clk);
	if (ret)
		return ret;
	ret = FUNC6(dev, pnx4008_clk_disable_unprepare,
				       wdt_clk);
	if (ret)
		return ret;

	pnx4008_wdd.bootstatus = (FUNC10(FUNC3(wdt_base)) & WDOG_RESET) ?
			WDIOF_CARDRESET : 0;
	pnx4008_wdd.parent = dev;
	FUNC13(&pnx4008_wdd, nowayout);
	FUNC14(&pnx4008_wdd, 128);

	if (FUNC10(FUNC2(wdt_base)) & COUNT_ENAB)
		FUNC11(WDOG_HW_RUNNING, &pnx4008_wdd.status);

	ret = FUNC9(dev, &pnx4008_wdd);
	if (ret < 0)
		return ret;

	FUNC5(dev, "heartbeat %d sec\n", pnx4008_wdd.timeout);

	return 0;
}