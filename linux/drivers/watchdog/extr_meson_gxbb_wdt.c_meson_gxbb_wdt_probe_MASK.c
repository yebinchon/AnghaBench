#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int min_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/  max_hw_heartbeat_ms; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct meson_gxbb_wdt {TYPE_1__ wdt_dev; scalar_t__ reg_base; scalar_t__ clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GXBB_WDT_CTRL_CLKDIV_EN ; 
 int GXBB_WDT_CTRL_CLK_EN ; 
 int GXBB_WDT_CTRL_DIV_MASK ; 
 int GXBB_WDT_CTRL_EE_RESET ; 
 scalar_t__ GXBB_WDT_CTRL_REG ; 
 int /*<<< orphan*/  GXBB_WDT_TCNT_SETUP_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct meson_gxbb_wdt* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  meson_clk_disable_unprepare ; 
 int /*<<< orphan*/  meson_gxbb_wdt_info ; 
 int /*<<< orphan*/  meson_gxbb_wdt_ops ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct meson_gxbb_wdt*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct meson_gxbb_wdt*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct meson_gxbb_wdt *data;
	int ret;

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->reg_base = FUNC7(pdev, 0);
	if (FUNC0(data->reg_base))
		return FUNC1(data->reg_base);

	data->clk = FUNC5(dev, NULL);
	if (FUNC0(data->clk))
		return FUNC1(data->clk);

	ret = FUNC3(data->clk);
	if (ret)
		return ret;
	ret = FUNC4(dev, meson_clk_disable_unprepare,
				       data->clk);
	if (ret)
		return ret;

	FUNC10(pdev, data);

	data->wdt_dev.parent = dev;
	data->wdt_dev.info = &meson_gxbb_wdt_info;
	data->wdt_dev.ops = &meson_gxbb_wdt_ops;
	data->wdt_dev.max_hw_heartbeat_ms = GXBB_WDT_TCNT_SETUP_MASK;
	data->wdt_dev.min_timeout = 1;
	data->wdt_dev.timeout = DEFAULT_TIMEOUT;
	FUNC11(&data->wdt_dev, data);

	/* Setup with 1ms timebase */
	FUNC13(((FUNC2(data->clk) / 1000) & GXBB_WDT_CTRL_DIV_MASK) |
		GXBB_WDT_CTRL_EE_RESET |
		GXBB_WDT_CTRL_CLK_EN |
		GXBB_WDT_CTRL_CLKDIV_EN,
		data->reg_base + GXBB_WDT_CTRL_REG);

	FUNC9(&data->wdt_dev, data->wdt_dev.timeout);

	FUNC12(&data->wdt_dev);
	return FUNC8(dev, &data->wdt_dev);
}