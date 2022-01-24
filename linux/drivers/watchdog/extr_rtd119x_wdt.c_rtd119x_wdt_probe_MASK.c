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
struct TYPE_6__ {int timeout; int max_timeout; int min_timeout; struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct rtd119x_watchdog_device {TYPE_1__ wdt_dev; scalar_t__ base; scalar_t__ clk; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ RTD119X_TCWTR ; 
 int /*<<< orphan*/  RTD119X_TCWTR_WDCLR ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct rtd119x_watchdog_device* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rtd119x_watchdog_device*) ; 
 int /*<<< orphan*/  rtd119x_clk_disable_unprepare ; 
 int /*<<< orphan*/  rtd119x_wdt_info ; 
 int /*<<< orphan*/  rtd119x_wdt_ops ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct rtd119x_watchdog_device*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rtd119x_watchdog_device *data;
	int ret;

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->base = FUNC7(pdev, 0);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	data->clk = FUNC5(dev, NULL);
	if (FUNC0(data->clk))
		return FUNC1(data->clk);

	ret = FUNC3(data->clk);
	if (ret)
		return ret;
	ret = FUNC4(dev, rtd119x_clk_disable_unprepare,
				       data->clk);
	if (ret)
		return ret;

	data->wdt_dev.info = &rtd119x_wdt_info;
	data->wdt_dev.ops = &rtd119x_wdt_ops;
	data->wdt_dev.timeout = 120;
	data->wdt_dev.max_timeout = 0xffffffff / FUNC2(data->clk);
	data->wdt_dev.min_timeout = 1;
	data->wdt_dev.parent = dev;

	FUNC13(&data->wdt_dev);
	FUNC12(&data->wdt_dev, data);
	FUNC9(pdev, data);

	FUNC14(RTD119X_TCWTR_WDCLR, data->base + RTD119X_TCWTR);
	FUNC10(&data->wdt_dev, data->wdt_dev.timeout);
	FUNC11(&data->wdt_dev);

	return FUNC8(dev, &data->wdt_dev);
}