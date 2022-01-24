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
typedef  int /*<<< orphan*/  time64_t ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rtc_wkalrm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	ssize_t retval;
	time64_t alarm;
	struct rtc_wkalrm alm;

	/* Don't show disabled alarms.  For uniformity, RTC alarms are
	 * conceptually one-shot, even though some common RTCs (on PCs)
	 * don't actually work that way.
	 *
	 * NOTE: RTC implementations where the alarm doesn't match an
	 * exact YYYY-MM-DD HH:MM[:SS] date *must* disable their RTC
	 * alarms after they trigger, to ensure one-shot semantics.
	 */
	retval = FUNC0(FUNC3(dev), &alm);
	if (retval == 0 && alm.enabled) {
		alarm = FUNC1(&alm.time);
		retval = FUNC2(buf, "%lld\n", alarm);
	}

	return retval;
}