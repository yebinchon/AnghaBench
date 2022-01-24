#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at91rm9200_restart_nb ; 
 TYPE_1__ at91wdt_miscdev ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_time ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device *parent;
	int res;

	if (at91wdt_miscdev.parent)
		return -EBUSY;
	at91wdt_miscdev.parent = &pdev->dev;

	parent = dev->parent;
	if (!parent) {
		FUNC1(dev, "no parent\n");
		return -ENODEV;
	}

	regmap_st = FUNC6(parent->of_node);
	if (FUNC0(regmap_st))
		return -ENODEV;

	res = FUNC3(&at91wdt_miscdev);
	if (res)
		return res;

	res = FUNC5(&at91rm9200_restart_nb);
	if (res)
		FUNC2(dev, "failed to register restart handler\n");

	FUNC4("AT91 Watchdog Timer enabled (%d seconds%s)\n",
		wdt_time, nowayout ? ", nowayout" : "");
	return 0;
}