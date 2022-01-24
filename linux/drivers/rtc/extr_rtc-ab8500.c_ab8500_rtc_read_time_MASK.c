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
typedef  unsigned char u8 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int /*<<< orphan*/  AB8500_RTC_READ_REQ_REG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long COUNTS_PER_SEC ; 
 unsigned long HZ ; 
 unsigned char RTC_READ_REQUEST ; 
 int /*<<< orphan*/ * ab8500_rtc_time_regs ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct rtc_time*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	unsigned long timeout = jiffies + HZ;
	int retval, i;
	unsigned long mins, secs;
	unsigned char buf[FUNC0(ab8500_rtc_time_regs)];
	u8 value;

	/* Request a data read */
	retval = FUNC2(dev,
		AB8500_RTC, AB8500_RTC_READ_REQ_REG, RTC_READ_REQUEST);
	if (retval < 0)
		return retval;

	/* Wait for some cycles after enabling the rtc read in ab8500 */
	while (FUNC4(jiffies, timeout)) {
		retval = FUNC1(dev,
			AB8500_RTC, AB8500_RTC_READ_REQ_REG, &value);
		if (retval < 0)
			return retval;

		if (!(value & RTC_READ_REQUEST))
			break;

		FUNC5(1000, 5000);
	}

	/* Read the Watchtime registers */
	for (i = 0; i < FUNC0(ab8500_rtc_time_regs); i++) {
		retval = FUNC1(dev,
			AB8500_RTC, ab8500_rtc_time_regs[i], &value);
		if (retval < 0)
			return retval;
		buf[i] = value;
	}

	mins = (buf[0] << 16) | (buf[1] << 8) | buf[2];

	secs =	(buf[3] << 8) | buf[4];
	secs =	secs / COUNTS_PER_SEC;
	secs =	secs + (mins * 60);

	FUNC3(secs, tm);
	return 0;
}