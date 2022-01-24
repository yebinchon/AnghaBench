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
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/ * ab8500_rtc_alarm_regs ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct rtc_time*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alarm)
{
	int retval, i;
	unsigned char buf[FUNC0(ab8500_rtc_alarm_regs)];
	unsigned long mins, secs = 0, cursec = 0;
	struct rtc_time curtm;

	/* Get the number of seconds since 1970 */
	FUNC5(&alarm->time, &secs);

	/*
	 * Check whether alarm is set less than 1min.
	 * Since our RTC doesn't support alarm resolution less than 1min,
	 * return -EINVAL, so UIE EMUL can take it up, incase of UIE_ON
	 */
	FUNC2(dev, &curtm); /* Read current time */
	FUNC5(&curtm, &cursec);
	if ((secs - cursec) < 59) {
		FUNC4(dev, "Alarm less than 1 minute not supported\r\n");
		return -EINVAL;
	}

	mins = secs / 60;

	buf[2] = mins & 0xFF;
	buf[1] = (mins >> 8) & 0xFF;
	buf[0] = (mins >> 16) & 0xFF;

	/* Set the alarm time */
	for (i = 0; i < FUNC0(ab8500_rtc_alarm_regs); i++) {
		retval = FUNC3(dev, AB8500_RTC,
			ab8500_rtc_alarm_regs[i], buf[i]);
		if (retval < 0)
			return retval;
	}

	return FUNC1(dev, alarm->enabled);
}