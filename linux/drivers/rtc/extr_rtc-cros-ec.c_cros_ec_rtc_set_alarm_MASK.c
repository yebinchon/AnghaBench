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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ time64_t ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct cros_ec_rtc {scalar_t__ saved_alarm; struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_RTC_GET_VALUE ; 
 int /*<<< orphan*/  EC_CMD_RTC_SET_ALARM ; 
 scalar_t__ EC_RTC_ALARM_CLEAR ; 
 int EINVAL ; 
 int ETIME ; 
 scalar_t__ U32_MAX ; 
 int FUNC0 (struct cros_ec_device*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (struct cros_ec_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct cros_ec_rtc* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct cros_ec_rtc *cros_ec_rtc = FUNC3(dev);
	struct cros_ec_device *cros_ec = cros_ec_rtc->cros_ec;
	int ret;
	time64_t alarm_time;
	u32 current_time, alarm_offset;

	/*
	 * The EC host command for setting the alarm is relative
	 * (i.e. 5 seconds from now) whereas rtc_wkalrm is absolute.
	 * Get the current RTC time first so we can calculate the
	 * relative time.
	 */
	ret = FUNC0(cros_ec, EC_CMD_RTC_GET_VALUE, &current_time);
	if (ret < 0) {
		FUNC2(dev, "error getting time: %d\n", ret);
		return ret;
	}

	alarm_time = FUNC4(&alrm->time);

	if (alarm_time < 0 || alarm_time > U32_MAX)
		return -EINVAL;

	if (!alrm->enabled) {
		/*
		 * If the alarm is being disabled, send an alarm
		 * clear command.
		 */
		alarm_offset = EC_RTC_ALARM_CLEAR;
		cros_ec_rtc->saved_alarm = (u32)alarm_time;
	} else {
		/* Don't set an alarm in the past. */
		if ((u32)alarm_time <= current_time)
			return -ETIME;

		alarm_offset = (u32)alarm_time - current_time;
	}

	ret = FUNC1(cros_ec, EC_CMD_RTC_SET_ALARM, alarm_offset);
	if (ret < 0) {
		FUNC2(dev, "error setting alarm: %d\n", ret);
		return ret;
	}

	return 0;
}