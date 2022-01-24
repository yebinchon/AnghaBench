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
struct st_rtc {unsigned long long clkrate; int /*<<< orphan*/  alarm; } ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct st_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rtc_wkalrm*,int) ; 
 unsigned long long FUNC2 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC5 (struct st_rtc*,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *t)
{
	struct st_rtc *rtc = FUNC0(dev);
	struct rtc_time now;
	unsigned long long now_secs;
	unsigned long long alarm_secs;
	unsigned long long lpa;

	FUNC4(dev, &now);
	now_secs = FUNC2(&now);
	alarm_secs = FUNC2(&t->time);

	FUNC1(&rtc->alarm, t, sizeof(struct rtc_wkalrm));

	/* Now many secs to fire */
	alarm_secs -= now_secs;
	lpa = (unsigned long long)alarm_secs * rtc->clkrate;

	FUNC5(rtc, lpa >> 32, lpa);
	FUNC3(dev, t->enabled);

	return 0;
}