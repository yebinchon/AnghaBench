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
struct watchdog_device {unsigned int timeout; TYPE_1__* info; scalar_t__ parent; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {scalar_t__ identity; } ;

/* Variables and functions */
 int EINVAL ; 
 char const* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*,unsigned int) ; 

int FUNC6(struct watchdog_device *wdd,
				unsigned int timeout_parm, struct device *dev)
{
	const char *dev_str = wdd->parent ? FUNC0(wdd->parent) :
			      (const char *)wdd->info->identity;
	unsigned int t = 0;
	int ret = 0;

	FUNC4(wdd);

	/* check the driver supplied value (likely a module parameter) first */
	if (timeout_parm) {
		if (!FUNC5(wdd, timeout_parm)) {
			wdd->timeout = timeout_parm;
			return 0;
		}
		FUNC2("%s: driver supplied timeout (%u) out of range\n",
			dev_str, timeout_parm);
		ret = -EINVAL;
	}

	/* try to get the timeout_sec property */
	if (dev && dev->of_node &&
	    FUNC1(dev->of_node, "timeout-sec", &t) == 0) {
		if (t && !FUNC5(wdd, t)) {
			wdd->timeout = t;
			return 0;
		}
		FUNC2("%s: DT supplied timeout (%u) out of range\n", dev_str, t);
		ret = -EINVAL;
	}

	if (ret < 0 && wdd->timeout)
		FUNC3("%s: falling back to default timeout (%u)\n", dev_str,
			wdd->timeout);

	return ret;
}