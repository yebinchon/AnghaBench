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
typedef  int u8 ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; scalar_t__ pending; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int /*<<< orphan*/  AB8500_RTC_STAT_REG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int RTC_ALARM_ENA ; 
 int /*<<< orphan*/ * ab8500_rtc_alarm_regs ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alarm)
{
	int retval, i;
	u8 rtc_ctrl, value;
	unsigned char buf[FUNC0(ab8500_rtc_alarm_regs)];
	unsigned long secs, mins;

	/* Check if the alarm is enabled or not */
	retval = FUNC1(dev, AB8500_RTC,
		AB8500_RTC_STAT_REG, &rtc_ctrl);
	if (retval < 0)
		return retval;

	if (rtc_ctrl & RTC_ALARM_ENA)
		alarm->enabled = 1;
	else
		alarm->enabled = 0;

	alarm->pending = 0;

	for (i = 0; i < FUNC0(ab8500_rtc_alarm_regs); i++) {
		retval = FUNC1(dev, AB8500_RTC,
			ab8500_rtc_alarm_regs[i], &value);
		if (retval < 0)
			return retval;
		buf[i] = value;
	}

	mins = (buf[0] << 16) | (buf[1] << 8) | (buf[2]);
	secs = mins * 60;

	FUNC2(secs, &alarm->time);

	return 0;
}