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
 int /*<<< orphan*/  ECMPHREG ; 
 int /*<<< orphan*/  ECMPLREG ; 
 int /*<<< orphan*/  ECMPMREG ; 
 int /*<<< orphan*/  alarm_enabled ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	unsigned long low, mid, high;
	struct rtc_time *time = &wkalrm->time;

	FUNC2(&rtc_lock);

	low = FUNC0(ECMPLREG);
	mid = FUNC0(ECMPMREG);
	high = FUNC0(ECMPHREG);
	wkalrm->enabled = alarm_enabled;

	FUNC3(&rtc_lock);

	FUNC1((high << 17) | (mid << 1) | (low >> 15), time);

	return 0;
}