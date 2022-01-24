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
struct TYPE_2__ {unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct mrst_rtc {int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IPCMSG_VRTC ; 
 int /*<<< orphan*/  IPC_CMD_VRTC_SETALARM ; 
 int /*<<< orphan*/  RTC_AIE ; 
 int /*<<< orphan*/  RTC_HOURS_ALARM ; 
 int /*<<< orphan*/  RTC_MINUTES_ALARM ; 
 int /*<<< orphan*/  RTC_SECONDS_ALARM ; 
 struct mrst_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mrst_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mrst_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *t)
{
	struct mrst_rtc	*mrst = FUNC0(dev);
	unsigned char hrs, min, sec;
	int ret = 0;

	if (!mrst->irq)
		return -EIO;

	hrs = t->time.tm_hour;
	min = t->time.tm_min;
	sec = t->time.tm_sec;

	FUNC4(&rtc_lock);
	/* Next rtc irq must not be from previous alarm setting */
	FUNC2(mrst, RTC_AIE);

	/* Update alarm */
	FUNC6(hrs, RTC_HOURS_ALARM);
	FUNC6(min, RTC_MINUTES_ALARM);
	FUNC6(sec, RTC_SECONDS_ALARM);

	FUNC5(&rtc_lock);

	ret = FUNC1(IPCMSG_VRTC, IPC_CMD_VRTC_SETALARM);
	if (ret)
		return ret;

	FUNC4(&rtc_lock);
	if (t->enabled)
		FUNC3(mrst, RTC_AIE);

	FUNC5(&rtc_lock);

	return 0;
}