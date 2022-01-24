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
struct watchdog_device {int min_timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXTENT ; 
 scalar_t__ BASE_ADDR ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WATCHDOG_MAX_TIMEOUT ; 
 int /*<<< orphan*/  WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct watchdog_device* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  ebc_c384_wdt_info ; 
 int /*<<< orphan*/  ebc_c384_wdt_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, unsigned int id)
{
	struct watchdog_device *wdd;

	if (!FUNC3(dev, BASE_ADDR, ADDR_EXTENT, FUNC1(dev))) {
		FUNC0(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
			BASE_ADDR, BASE_ADDR + ADDR_EXTENT);
		return -EBUSY;
	}

	wdd = FUNC2(dev, sizeof(*wdd), GFP_KERNEL);
	if (!wdd)
		return -ENOMEM;

	wdd->info = &ebc_c384_wdt_info;
	wdd->ops = &ebc_c384_wdt_ops;
	wdd->timeout = WATCHDOG_TIMEOUT;
	wdd->min_timeout = 1;
	wdd->max_timeout = WATCHDOG_MAX_TIMEOUT;

	FUNC6(wdd, nowayout);
	FUNC5(wdd, timeout, dev);

	return FUNC4(dev, wdd);
}