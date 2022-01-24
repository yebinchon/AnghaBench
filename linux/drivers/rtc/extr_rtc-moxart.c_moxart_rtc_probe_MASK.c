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
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct moxart_rtc {int gpio_data; int gpio_sclk; int gpio_reset; int /*<<< orphan*/  rtc; int /*<<< orphan*/  rtc_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_DIR_OUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,char*) ; 
 struct moxart_rtc* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  moxart_rtc_ops ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct moxart_rtc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct moxart_rtc *moxart_rtc;
	int ret = 0;

	moxart_rtc = FUNC5(&pdev->dev, sizeof(*moxart_rtc), GFP_KERNEL);
	if (!moxart_rtc)
		return -ENOMEM;

	moxart_rtc->gpio_data = FUNC8(pdev->dev.of_node,
						  "gpio-rtc-data", 0);
	if (!FUNC7(moxart_rtc->gpio_data)) {
		FUNC2(&pdev->dev, "invalid gpio (data): %d\n",
			moxart_rtc->gpio_data);
		return moxart_rtc->gpio_data;
	}

	moxart_rtc->gpio_sclk = FUNC8(pdev->dev.of_node,
						  "gpio-rtc-sclk", 0);
	if (!FUNC7(moxart_rtc->gpio_sclk)) {
		FUNC2(&pdev->dev, "invalid gpio (sclk): %d\n",
			moxart_rtc->gpio_sclk);
		return moxart_rtc->gpio_sclk;
	}

	moxart_rtc->gpio_reset = FUNC8(pdev->dev.of_node,
						   "gpio-rtc-reset", 0);
	if (!FUNC7(moxart_rtc->gpio_reset)) {
		FUNC2(&pdev->dev, "invalid gpio (reset): %d\n",
			moxart_rtc->gpio_reset);
		return moxart_rtc->gpio_reset;
	}

	FUNC10(&moxart_rtc->rtc_lock);
	FUNC9(pdev, moxart_rtc);

	ret = FUNC3(&pdev->dev, moxart_rtc->gpio_data, "rtc_data");
	if (ret) {
		FUNC2(&pdev->dev, "can't get rtc_data gpio\n");
		return ret;
	}

	ret = FUNC4(&pdev->dev, moxart_rtc->gpio_sclk,
				    GPIOF_DIR_OUT, "rtc_sclk");
	if (ret) {
		FUNC2(&pdev->dev, "can't get rtc_sclk gpio\n");
		return ret;
	}

	ret = FUNC4(&pdev->dev, moxart_rtc->gpio_reset,
				    GPIOF_DIR_OUT, "rtc_reset");
	if (ret) {
		FUNC2(&pdev->dev, "can't get rtc_reset gpio\n");
		return ret;
	}

	moxart_rtc->rtc = FUNC6(&pdev->dev, pdev->name,
						   &moxart_rtc_ops,
						   THIS_MODULE);
	if (FUNC0(moxart_rtc->rtc)) {
		FUNC2(&pdev->dev, "devm_rtc_device_register failed\n");
		return FUNC1(moxart_rtc->rtc);
	}

	return 0;
}