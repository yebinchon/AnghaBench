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
typedef  int u32 ;
struct stm32_iwdg {void* clk_lsi; int /*<<< orphan*/  rate; void* clk_pclk; TYPE_1__* data; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ has_pclk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  stm32_clk_disable_unprepare ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
			       struct stm32_iwdg *wdt)
{
	struct device *dev = &pdev->dev;
	u32 ret;

	wdt->clk_lsi = FUNC6(dev, "lsi");
	if (FUNC0(wdt->clk_lsi)) {
		FUNC4(dev, "Unable to get lsi clock\n");
		return FUNC1(wdt->clk_lsi);
	}

	/* optional peripheral clock */
	if (wdt->data->has_pclk) {
		wdt->clk_pclk = FUNC6(dev, "pclk");
		if (FUNC0(wdt->clk_pclk)) {
			FUNC4(dev, "Unable to get pclk clock\n");
			return FUNC1(wdt->clk_pclk);
		}

		ret = FUNC3(wdt->clk_pclk);
		if (ret) {
			FUNC4(dev, "Unable to prepare pclk clock\n");
			return ret;
		}
		ret = FUNC5(dev,
					       stm32_clk_disable_unprepare,
					       wdt->clk_pclk);
		if (ret)
			return ret;
	}

	ret = FUNC3(wdt->clk_lsi);
	if (ret) {
		FUNC4(dev, "Unable to prepare lsi clock\n");
		return ret;
	}
	ret = FUNC5(dev, stm32_clk_disable_unprepare,
				       wdt->clk_lsi);
	if (ret)
		return ret;

	wdt->rate = FUNC2(wdt->clk_lsi);

	return 0;
}