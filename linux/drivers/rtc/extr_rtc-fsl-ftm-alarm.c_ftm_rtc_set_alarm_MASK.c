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
struct rtc_wkalrm {struct rtc_time time; } ;
struct ftm_rtc {unsigned long alarm_freq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FTM_MOD ; 
 unsigned long MAX_COUNT_VAL ; 
 struct ftm_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct ftm_rtc*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alm)
{
	struct rtc_time tm;
	unsigned long now, alm_time, cycle;
	struct ftm_rtc *rtc = FUNC0(dev);

	FUNC5(dev, &tm);
	FUNC7(&tm, &now);
	FUNC7(&alm->time, &alm_time);

	FUNC1(rtc);
	cycle = (alm_time - now) * rtc->alarm_freq;
	if (cycle > MAX_COUNT_VAL) {
		FUNC6("Out of alarm range {0~262} seconds.\n");
		return -ERANGE;
	}

	FUNC3(rtc);

	/*
	 * The counter increments until the value of MOD is reached,
	 * at which point the counter is reloaded with the value of CNTIN.
	 * The TOF (the overflow flag) bit is set when the FTM counter
	 * changes from MOD to CNTIN. So we should using the cycle - 1.
	 */
	FUNC8(rtc, FTM_MOD, cycle - 1);

	FUNC2(rtc);
	FUNC4(rtc);

	return 0;

}