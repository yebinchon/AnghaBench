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
struct TYPE_2__ {int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {TYPE_1__ time; scalar_t__ enabled; } ;
struct device {int dummy; } ;
struct cmos_rtc {int /*<<< orphan*/  alarm_expires; scalar_t__ mon_alrm; scalar_t__ day_alrm; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  RTC_AIE ; 
 scalar_t__ RTC_ALWAYS_BCD ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 unsigned char RTC_DM_BINARY ; 
 scalar_t__ RTC_HOURS_ALARM ; 
 scalar_t__ RTC_MINUTES_ALARM ; 
 scalar_t__ RTC_SECONDS_ALARM ; 
 int FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct rtc_wkalrm*) ; 
 struct cmos_rtc* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct rtc_wkalrm *t)
{
	struct cmos_rtc	*cmos = FUNC6(dev);
	unsigned char mon, mday, hrs, min, sec, rtc_control;
	int ret;

	/* This not only a rtc_op, but also called directly */
	if (!FUNC8(cmos->irq))
		return -EIO;

	ret = FUNC5(dev, t);
	if (ret < 0)
		return ret;

	mon = t->time.tm_mon + 1;
	mday = t->time.tm_mday;
	hrs = t->time.tm_hour;
	min = t->time.tm_min;
	sec = t->time.tm_sec;

	rtc_control = FUNC0(RTC_CONTROL);
	if (!(rtc_control & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
		/* Writing 0xff means "don't care" or "match all".  */
		mon = (mon <= 12) ? FUNC2(mon) : 0xff;
		mday = (mday >= 1 && mday <= 31) ? FUNC2(mday) : 0xff;
		hrs = (hrs < 24) ? FUNC2(hrs) : 0xff;
		min = (min < 60) ? FUNC2(min) : 0xff;
		sec = (sec < 60) ? FUNC2(sec) : 0xff;
	}

	FUNC10(&rtc_lock);

	/* next rtc irq must not be from previous alarm setting */
	FUNC3(cmos, RTC_AIE);

	/* update alarm */
	FUNC1(hrs, RTC_HOURS_ALARM);
	FUNC1(min, RTC_MINUTES_ALARM);
	FUNC1(sec, RTC_SECONDS_ALARM);

	/* the system may support an "enhanced" alarm */
	if (cmos->day_alrm) {
		FUNC1(mday, cmos->day_alrm);
		if (cmos->mon_alrm)
			FUNC1(mon, cmos->mon_alrm);
	}

	if (FUNC12()) {
		/*
		 * FIXME the HPET alarm glue currently ignores day_alrm
		 * and mon_alrm ...
		 */
		FUNC7(t->time.tm_hour, t->time.tm_min,
				    t->time.tm_sec);
	}

	if (t->enabled)
		FUNC4(cmos, RTC_AIE);

	FUNC11(&rtc_lock);

	cmos->alarm_expires = FUNC9(&t->time);

	return 0;
}