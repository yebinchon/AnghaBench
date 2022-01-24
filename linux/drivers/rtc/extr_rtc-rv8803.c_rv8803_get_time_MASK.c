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
struct rv8803_data {int /*<<< orphan*/  client; } ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; int /*<<< orphan*/  tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t RV8803_DAY ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_V2F ; 
 size_t RV8803_HOUR ; 
 size_t RV8803_MIN ; 
 size_t RV8803_MONTH ; 
 size_t RV8803_SEC ; 
 size_t RV8803_WEEK ; 
 size_t RV8803_YEAR ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct rv8803_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t,int,int*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct rv8803_data *rv8803 = FUNC2(dev);
	u8 date1[7];
	u8 date2[7];
	u8 *date = date1;
	int ret, flags;

	flags = FUNC5(rv8803->client, RV8803_FLAG);
	if (flags < 0)
		return flags;

	if (flags & RV8803_FLAG_V2F) {
		FUNC3(dev, "Voltage low, data is invalid.\n");
		return -EINVAL;
	}

	ret = FUNC6(rv8803->client, RV8803_SEC, 7, date);
	if (ret)
		return ret;

	if ((date1[RV8803_SEC] & 0x7f) == FUNC1(59)) {
		ret = FUNC6(rv8803->client, RV8803_SEC, 7, date2);
		if (ret)
			return ret;

		if ((date2[RV8803_SEC] & 0x7f) != FUNC1(59))
			date = date2;
	}

	tm->tm_sec  = FUNC0(date[RV8803_SEC] & 0x7f);
	tm->tm_min  = FUNC0(date[RV8803_MIN] & 0x7f);
	tm->tm_hour = FUNC0(date[RV8803_HOUR] & 0x3f);
	tm->tm_wday = FUNC4(date[RV8803_WEEK] & 0x7f);
	tm->tm_mday = FUNC0(date[RV8803_DAY] & 0x3f);
	tm->tm_mon  = FUNC0(date[RV8803_MONTH] & 0x1f) - 1;
	tm->tm_year = FUNC0(date[RV8803_YEAR]) + 100;

	return 0;
}