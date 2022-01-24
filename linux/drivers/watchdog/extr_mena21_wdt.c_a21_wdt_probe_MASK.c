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
struct TYPE_6__ {int /*<<< orphan*/  bootstatus; struct device* parent; } ;
struct a21_wdt_drv {TYPE_1__ wdt; int /*<<< orphan*/ * gpios; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_ASIS ; 
 int GPIOD_IN ; 
 int GPIO_WD_RST0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NUM_GPIOS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDIOF_CARDRESET ; 
 int /*<<< orphan*/  WDIOF_EXTERN1 ; 
 int /*<<< orphan*/  WDIOF_EXTERN2 ; 
 int /*<<< orphan*/  WDIOF_POWERUNDER ; 
 TYPE_1__ a21_wdt ; 
 unsigned int FUNC2 (struct a21_wdt_drv*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct a21_wdt_drv*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,int,int) ; 
 struct a21_wdt_drv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct a21_wdt_drv*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct a21_wdt_drv *drv;
	unsigned int reset = 0;
	int num_gpios;
	int ret;
	int i;

	drv = FUNC7(dev, sizeof(struct a21_wdt_drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;

	num_gpios = FUNC9(dev, NULL);
	if (num_gpios != NUM_GPIOS) {
		FUNC3(dev, "gpios DT property wrong, got %d want %d",
			num_gpios, NUM_GPIOS);
		return -ENODEV;
	}

	/* Request the used GPIOs */
	for (i = 0; i < num_gpios; i++) {
		enum gpiod_flags gflags;

		if (i < GPIO_WD_RST0)
			gflags = GPIOD_ASIS;
		else
			gflags = GPIOD_IN;
		drv->gpios[i] = FUNC6(dev, NULL, i, gflags);
		if (FUNC0(drv->gpios[i]))
			return FUNC1(drv->gpios[i]);

		FUNC12(drv->gpios[i], "MEN A21 Watchdog");

		/*
		 * Retrieve the initial value from the GPIOs that should be
		 * output, then set up the line as output with that value.
		 */
		if (i < GPIO_WD_RST0) {
			int val;

			val = FUNC11(drv->gpios[i]);
			FUNC10(drv->gpios[i], val);
		}
	}

	FUNC13(&a21_wdt, 30, dev);
	FUNC15(&a21_wdt, nowayout);
	FUNC14(&a21_wdt, drv);
	a21_wdt.parent = dev;

	reset = FUNC2(drv);
	if (reset == 2)
		a21_wdt.bootstatus |= WDIOF_EXTERN1;
	else if (reset == 4)
		a21_wdt.bootstatus |= WDIOF_CARDRESET;
	else if (reset == 5)
		a21_wdt.bootstatus |= WDIOF_POWERUNDER;
	else if (reset == 7)
		a21_wdt.bootstatus |= WDIOF_EXTERN2;

	drv->wdt = a21_wdt;
	FUNC5(dev, drv);

	ret = FUNC8(dev, &a21_wdt);
	if (ret)
		return ret;

	FUNC4(dev, "MEN A21 watchdog timer driver enabled\n");

	return 0;
}