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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int WDOG_CTRL_LAST_RESET ; 
 int /*<<< orphan*/  WDOG_REG_CTRL ; 
 int /*<<< orphan*/  ath79_wdt_miscdev ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boot_status ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int max_timeout ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int timeout ; 
 scalar_t__ wdt_base ; 
 scalar_t__ wdt_clk ; 
 int wdt_freq ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	u32 ctrl;
	int err;

	if (wdt_base)
		return -EBUSY;

	wdt_base = FUNC9(pdev, 0);
	if (FUNC0(wdt_base))
		return FUNC1(wdt_base);

	wdt_clk = FUNC8(&pdev->dev, "wdt");
	if (FUNC0(wdt_clk))
		return FUNC1(wdt_clk);

	err = FUNC5(wdt_clk);
	if (err)
		return err;

	wdt_freq = FUNC4(wdt_clk);
	if (!wdt_freq) {
		err = -EINVAL;
		goto err_clk_disable;
	}

	max_timeout = (0xfffffffful / wdt_freq);
	if (timeout < 1 || timeout > max_timeout) {
		timeout = max_timeout;
		FUNC7(&pdev->dev,
			"timeout value must be 0 < timeout < %d, using %d\n",
			max_timeout, timeout);
	}

	ctrl = FUNC2(WDOG_REG_CTRL);
	boot_status = (ctrl & WDOG_CTRL_LAST_RESET) ? WDIOF_CARDRESET : 0;

	err = FUNC10(&ath79_wdt_miscdev);
	if (err) {
		FUNC6(&pdev->dev,
			"unable to register misc device, err=%d\n", err);
		goto err_clk_disable;
	}

	return 0;

err_clk_disable:
	FUNC3(wdt_clk);
	return err;
}