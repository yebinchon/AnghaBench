#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ds2404_platform_data {int dummy; } ;
struct ds2404 {TYPE_2__* rtc; TYPE_1__* gpio; } ;
struct TYPE_7__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 size_t DS2404_CLK ; 
 size_t DS2404_DQ ; 
 size_t DS2404_RST ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 struct ds2404_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ds2404*) ; 
 struct ds2404* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ds2404*,struct platform_device*,struct ds2404_platform_data*) ; 
 int /*<<< orphan*/  ds2404_gpio_unmap ; 
 int /*<<< orphan*/  ds2404_rtc_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ds2404*) ; 
 int FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct ds2404_platform_data *pdata = FUNC2(&pdev->dev);
	struct ds2404 *chip;
	int retval = -EBUSY;

	chip = FUNC5(&pdev->dev, sizeof(struct ds2404), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->rtc = FUNC6(&pdev->dev);
	if (FUNC0(chip->rtc))
		return FUNC1(chip->rtc);

	retval = FUNC8(chip, pdev, pdata);
	if (retval)
		return retval;

	retval = FUNC4(&pdev->dev, ds2404_gpio_unmap, chip);
	if (retval)
		return retval;

	FUNC3(&pdev->dev, "using GPIOs RST:%d, CLK:%d, DQ:%d\n",
		 chip->gpio[DS2404_RST].gpio, chip->gpio[DS2404_CLK].gpio,
		 chip->gpio[DS2404_DQ].gpio);

	FUNC9(pdev, chip);

	chip->rtc->ops = &ds2404_rtc_ops;
	chip->rtc->range_max = U32_MAX;

	retval = FUNC10(chip->rtc);
	if (retval)
		return retval;

	FUNC7(&pdev->dev);
	return 0;
}