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
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {scalar_t__ timeout; scalar_t__ max_timeout; scalar_t__ min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct ts4800_wdt {struct watchdog_device wdd; int /*<<< orphan*/  regmap; int /*<<< orphan*/  feed_offset; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ timeout; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX_TIMEOUT_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ts4800_wdt* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ts4800_wdt*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  ts4800_wdt_info ; 
 TYPE_1__* ts4800_wdt_map ; 
 int /*<<< orphan*/  ts4800_wdt_ops ; 
 int /*<<< orphan*/  FUNC11 (struct watchdog_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,struct ts4800_wdt*) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *syscon_np;
	struct watchdog_device *wdd;
	struct ts4800_wdt *wdt;
	u32 reg;
	int ret;

	syscon_np = FUNC7(np, "syscon", 0);
	if (!syscon_np) {
		FUNC2(dev, "no syscon property\n");
		return -ENODEV;
	}

	ret = FUNC8(np, "syscon", 1, &reg);
	if (ret < 0) {
		FUNC2(dev, "no offset in syscon\n");
		return ret;
	}

	/* allocate memory for watchdog struct */
	wdt = FUNC4(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	/* set regmap and offset to know where to write */
	wdt->feed_offset = reg;
	wdt->regmap = FUNC10(syscon_np);
	FUNC6(syscon_np);
	if (FUNC0(wdt->regmap)) {
		FUNC2(dev, "cannot get parent's regmap\n");
		return FUNC1(wdt->regmap);
	}

	/* Initialize struct watchdog_device */
	wdd = &wdt->wdd;
	wdd->parent = dev;
	wdd->info = &ts4800_wdt_info;
	wdd->ops = &ts4800_wdt_ops;
	wdd->min_timeout = ts4800_wdt_map[0].timeout;
	wdd->max_timeout = ts4800_wdt_map[MAX_TIMEOUT_INDEX].timeout;

	FUNC14(wdd, wdt);
	FUNC15(wdd, nowayout);
	FUNC13(wdd, 0, dev);

	/*
	 * As this watchdog supports only a few values, ts4800_wdt_set_timeout
	 * must be called to initialize timeout and feed_val with valid values.
	 * Default to maximum timeout if none, or an invalid one, is provided in
	 * device tree.
	 */
	if (!wdd->timeout)
		wdd->timeout = wdd->max_timeout;
	FUNC11(wdd, wdd->timeout);

	/*
	 * The feed register is write-only, so it is not possible to determine
	 * watchdog's state. Disable it to be in a known state.
	 */
	FUNC12(wdd);

	ret = FUNC5(dev, wdd);
	if (ret)
		return ret;

	FUNC9(pdev, wdt);

	FUNC3(dev, "initialized (timeout = %d sec, nowayout = %d)\n",
		 wdd->timeout, nowayout);

	return 0;
}