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
struct watchdog_device {TYPE_1__* info; scalar_t__ parent; } ;
struct TYPE_2__ {scalar_t__ identity; } ;

/* Variables and functions */
 int FUNC0 (struct watchdog_device*) ; 
 char const* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*) ; 
 scalar_t__ wtd_deferred_reg_done ; 
 int /*<<< orphan*/  wtd_deferred_reg_mutex ; 

int FUNC6(struct watchdog_device *wdd)
{
	const char *dev_str;
	int ret = 0;

	FUNC2(&wtd_deferred_reg_mutex);
	if (wtd_deferred_reg_done)
		ret = FUNC0(wdd);
	else
		FUNC5(wdd);
	FUNC3(&wtd_deferred_reg_mutex);

	if (ret) {
		dev_str = wdd->parent ? FUNC1(wdd->parent) :
			  (const char *)wdd->info->identity;
		FUNC4("%s: failed to register watchdog device (err = %d)\n",
			dev_str, ret);
	}

	return ret;
}