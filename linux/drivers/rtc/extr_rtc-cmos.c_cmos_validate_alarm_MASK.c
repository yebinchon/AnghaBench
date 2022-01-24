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
typedef  scalar_t__ time64_t ;
struct rtc_time {int tm_mon; int tm_year; int tm_mday; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct cmos_rtc {int /*<<< orphan*/  mon_alrm; int /*<<< orphan*/  day_alrm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct cmos_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *t)
{
	struct cmos_rtc *cmos = FUNC2(dev);
	struct rtc_time now;

	FUNC0(dev, &now);

	if (!cmos->day_alrm) {
		time64_t t_max_date;
		time64_t t_alrm;

		t_max_date = FUNC4(&now);
		t_max_date += 24 * 60 * 60 - 1;
		t_alrm = FUNC4(&t->time);
		if (t_alrm > t_max_date) {
			FUNC1(dev,
				"Alarms can be up to one day in the future\n");
			return -EINVAL;
		}
	} else if (!cmos->mon_alrm) {
		struct rtc_time max_date = now;
		time64_t t_max_date;
		time64_t t_alrm;
		int max_mday;

		if (max_date.tm_mon == 11) {
			max_date.tm_mon = 0;
			max_date.tm_year += 1;
		} else {
			max_date.tm_mon += 1;
		}
		max_mday = FUNC3(max_date.tm_mon, max_date.tm_year);
		if (max_date.tm_mday > max_mday)
			max_date.tm_mday = max_mday;

		t_max_date = FUNC4(&max_date);
		t_max_date -= 1;
		t_alrm = FUNC4(&t->time);
		if (t_alrm > t_max_date) {
			FUNC1(dev,
				"Alarms can be up to one month in the future\n");
			return -EINVAL;
		}
	} else {
		struct rtc_time max_date = now;
		time64_t t_max_date;
		time64_t t_alrm;
		int max_mday;

		max_date.tm_year += 1;
		max_mday = FUNC3(max_date.tm_mon, max_date.tm_year);
		if (max_date.tm_mday > max_mday)
			max_date.tm_mday = max_mday;

		t_max_date = FUNC4(&max_date);
		t_max_date -= 1;
		t_alrm = FUNC4(&t->time);
		if (t_alrm > t_max_date) {
			FUNC1(dev,
				"Alarms can be up to one year in the future\n");
			return -EINVAL;
		}
	}

	return 0;
}