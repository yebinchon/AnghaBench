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
struct watchdog_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_watchdog_unregister_device ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct watchdog_device**) ; 
 struct watchdog_device** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device**) ; 
 int FUNC3 (struct watchdog_device*) ; 

int FUNC4(struct device *dev,
				struct watchdog_device *wdd)
{
	struct watchdog_device **rcwdd;
	int ret;

	rcwdd = FUNC1(devm_watchdog_unregister_device, sizeof(*rcwdd),
			     GFP_KERNEL);
	if (!rcwdd)
		return -ENOMEM;

	ret = FUNC3(wdd);
	if (!ret) {
		*rcwdd = wdd;
		FUNC0(dev, rcwdd);
	} else {
		FUNC2(rcwdd);
	}

	return ret;
}