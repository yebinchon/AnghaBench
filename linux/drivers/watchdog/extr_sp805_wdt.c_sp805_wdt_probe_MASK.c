#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  status; int /*<<< orphan*/  timeout; TYPE_9__* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct sp805_wdt {TYPE_1__ wdd; int /*<<< orphan*/  lock; struct amba_device* adev; int /*<<< orphan*/  rate; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct amba_id {int dummy; } ;
struct TYPE_18__ {scalar_t__ of_node; } ;
struct amba_device {TYPE_9__ dev; int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct amba_device*,struct sp805_wdt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 struct sp805_wdt* FUNC9 (TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_9__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct sp805_wdt*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  wdt_info ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  wdt_ops ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct amba_device *adev, const struct amba_id *id)
{
	struct sp805_wdt *wdt;
	int ret = 0;

	wdt = FUNC9(&adev->dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt) {
		ret = -ENOMEM;
		goto err;
	}

	wdt->base = FUNC8(&adev->dev, &adev->res);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	if (adev->dev.of_node) {
		wdt->clk = FUNC7(&adev->dev, NULL);
		if (FUNC0(wdt->clk)) {
			FUNC4(&adev->dev, "Clock not found\n");
			return FUNC1(wdt->clk);
		}
		wdt->rate = FUNC3(wdt->clk);
	} else if (FUNC10(&adev->dev)) {
		/*
		 * When Driver probe with ACPI device, clock devices
		 * are not available, so watchdog rate get from
		 * clock-frequency property given in _DSD object.
		 */
		FUNC6(&adev->dev, "clock-frequency",
					 &wdt->rate);
		if (!wdt->rate) {
			FUNC4(&adev->dev, "no clock-frequency property\n");
			return -ENODEV;
		}
	}

	wdt->adev = adev;
	wdt->wdd.info = &wdt_info;
	wdt->wdd.ops = &wdt_ops;
	wdt->wdd.parent = &adev->dev;

	FUNC12(&wdt->lock);
	FUNC16(&wdt->wdd, nowayout);
	FUNC15(&wdt->wdd, wdt);
	FUNC17(&wdt->wdd, 128);

	/*
	 * If 'timeout-sec' devicetree property is specified, use that.
	 * Otherwise, use DEFAULT_TIMEOUT
	 */
	wdt->wdd.timeout = DEFAULT_TIMEOUT;
	FUNC13(&wdt->wdd, 0, &adev->dev);
	FUNC20(&wdt->wdd, wdt->wdd.timeout);

	/*
	 * If HW is already running, enable/reset the wdt and set the running
	 * bit to tell the wdt subsystem
	 */
	if (FUNC19(&wdt->wdd)) {
		FUNC18(&wdt->wdd);
		FUNC11(WDOG_HW_RUNNING, &wdt->wdd.status);
	}

	ret = FUNC14(&wdt->wdd);
	if (ret)
		goto err;
	FUNC2(adev, wdt);

	FUNC5(&adev->dev, "registration successful\n");
	return 0;

err:
	FUNC4(&adev->dev, "Probe Failed!!!\n");
	return ret;
}