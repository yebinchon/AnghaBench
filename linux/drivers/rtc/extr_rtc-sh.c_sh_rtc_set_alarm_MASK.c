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
struct sh_rtc {int /*<<< orphan*/  lock; scalar_t__ regbase; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RCR1 ; 
 unsigned int RCR1_AF ; 
 unsigned int RCR1_AIE ; 
 int /*<<< orphan*/  RDAYAR ; 
 int /*<<< orphan*/  RHRAR ; 
 int /*<<< orphan*/  RMINAR ; 
 int /*<<< orphan*/  RMONAR ; 
 int /*<<< orphan*/  RSECAR ; 
 int /*<<< orphan*/  RWKAR ; 
 struct sh_rtc* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_rtc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct sh_rtc *rtc = FUNC0(dev);
	unsigned int rcr1;
	struct rtc_time *tm = &wkalrm->time;
	int mon;

	FUNC3(&rtc->lock);

	/* disable alarm interrupt and clear the alarm flag */
	rcr1 = FUNC1(rtc->regbase + RCR1);
	rcr1 &= ~(RCR1_AF | RCR1_AIE);
	FUNC5(rcr1, rtc->regbase + RCR1);

	/* set alarm time */
	FUNC2(rtc, tm->tm_sec,  RSECAR);
	FUNC2(rtc, tm->tm_min,  RMINAR);
	FUNC2(rtc, tm->tm_hour, RHRAR);
	FUNC2(rtc, tm->tm_wday, RWKAR);
	FUNC2(rtc, tm->tm_mday, RDAYAR);
	mon = tm->tm_mon;
	if (mon >= 0)
		mon += 1;
	FUNC2(rtc, mon, RMONAR);

	if (wkalrm->enabled) {
		rcr1 |= RCR1_AIE;
		FUNC5(rcr1, rtc->regbase + RCR1);
	}

	FUNC4(&rtc->lock);

	return 0;
}