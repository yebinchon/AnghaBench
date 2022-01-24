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
typedef  int u8 ;
struct rv8803_data {int /*<<< orphan*/  flags_lock; int /*<<< orphan*/  client; } ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV8803_CTRL ; 
 int RV8803_CTRL_RESET ; 
 size_t RV8803_DAY ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_V1F ; 
 int RV8803_FLAG_V2F ; 
 size_t RV8803_HOUR ; 
 size_t RV8803_MIN ; 
 size_t RV8803_MONTH ; 
 size_t RV8803_SEC ; 
 size_t RV8803_WEEK ; 
 size_t RV8803_YEAR ; 
 int FUNC0 (scalar_t__) ; 
 struct rv8803_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t,int,int*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct rv8803_data *rv8803 = FUNC1(dev);
	u8 date[7];
	int ctrl, flags, ret;

	ctrl = FUNC4(rv8803->client, RV8803_CTRL);
	if (ctrl < 0)
		return ctrl;

	/* Stop the clock */
	ret = FUNC5(rv8803->client, RV8803_CTRL,
			       ctrl | RV8803_CTRL_RESET);
	if (ret)
		return ret;

	date[RV8803_SEC]   = FUNC0(tm->tm_sec);
	date[RV8803_MIN]   = FUNC0(tm->tm_min);
	date[RV8803_HOUR]  = FUNC0(tm->tm_hour);
	date[RV8803_WEEK]  = 1 << (tm->tm_wday);
	date[RV8803_DAY]   = FUNC0(tm->tm_mday);
	date[RV8803_MONTH] = FUNC0(tm->tm_mon + 1);
	date[RV8803_YEAR]  = FUNC0(tm->tm_year - 100);

	ret = FUNC6(rv8803->client, RV8803_SEC, 7, date);
	if (ret)
		return ret;

	/* Restart the clock */
	ret = FUNC5(rv8803->client, RV8803_CTRL,
			       ctrl & ~RV8803_CTRL_RESET);
	if (ret)
		return ret;

	FUNC2(&rv8803->flags_lock);

	flags = FUNC4(rv8803->client, RV8803_FLAG);
	if (flags < 0) {
		FUNC3(&rv8803->flags_lock);
		return flags;
	}

	ret = FUNC5(rv8803->client, RV8803_FLAG,
			       flags & ~(RV8803_FLAG_V1F | RV8803_FLAG_V2F));

	FUNC3(&rv8803->flags_lock);

	return ret;
}