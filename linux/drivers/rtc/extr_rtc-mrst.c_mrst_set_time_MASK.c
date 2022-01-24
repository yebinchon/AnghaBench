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
struct rtc_time {unsigned int tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPCMSG_VRTC ; 
 int /*<<< orphan*/  IPC_CMD_VRTC_SETTIME ; 
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *time)
{
	int ret;
	unsigned long flags;
	unsigned char mon, day, hrs, min, sec;
	unsigned int yrs;

	yrs = time->tm_year;
	mon = time->tm_mon + 1;   /* tm_mon starts at zero */
	day = time->tm_mday;
	hrs = time->tm_hour;
	min = time->tm_min;
	sec = time->tm_sec;

	if (yrs < 72 || yrs > 172)
		return -EINVAL;
	yrs -= 72;

	FUNC1(&rtc_lock, flags);

	FUNC3(yrs, RTC_YEAR);
	FUNC3(mon, RTC_MONTH);
	FUNC3(day, RTC_DAY_OF_MONTH);
	FUNC3(hrs, RTC_HOURS);
	FUNC3(min, RTC_MINUTES);
	FUNC3(sec, RTC_SECONDS);

	FUNC2(&rtc_lock, flags);

	ret = FUNC0(IPCMSG_VRTC, IPC_CMD_VRTC_SETTIME);
	return ret;
}