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
typedef  int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct m48t35_priv {int /*<<< orphan*/  lock; TYPE_1__* reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  year; int /*<<< orphan*/  month; int /*<<< orphan*/  date; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int M48T35_RTC_READ ; 
 void* FUNC0 (int) ; 
 struct m48t35_priv* FUNC1 (struct device*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct m48t35_priv *priv = FUNC1(dev);
	u8 control;

	/*
	 * Only the values that we read from the RTC are set. We leave
	 * tm_wday, tm_yday and tm_isdst untouched. Even though the
	 * RTC has RTC_DAY_OF_WEEK, we ignore it, as it is only updated
	 * by the RTC when initially set to a non-zero value.
	 */
	FUNC3(&priv->lock);
	control = FUNC2(&priv->reg->control);
	FUNC5(control | M48T35_RTC_READ, &priv->reg->control);
	tm->tm_sec = FUNC2(&priv->reg->sec);
	tm->tm_min = FUNC2(&priv->reg->min);
	tm->tm_hour = FUNC2(&priv->reg->hour);
	tm->tm_mday = FUNC2(&priv->reg->date);
	tm->tm_mon = FUNC2(&priv->reg->month);
	tm->tm_year = FUNC2(&priv->reg->year);
	FUNC5(control, &priv->reg->control);
	FUNC4(&priv->lock);

	tm->tm_sec = FUNC0(tm->tm_sec);
	tm->tm_min = FUNC0(tm->tm_min);
	tm->tm_hour = FUNC0(tm->tm_hour);
	tm->tm_mday = FUNC0(tm->tm_mday);
	tm->tm_mon = FUNC0(tm->tm_mon);
	tm->tm_year = FUNC0(tm->tm_year);

	/*
	 * Account for differences between how the RTC uses the values
	 * and how they are defined in a struct rtc_time;
	 */
	tm->tm_year += 70;
	if (tm->tm_year <= 69)
		tm->tm_year += 100;

	tm->tm_mon--;
	return 0;
}