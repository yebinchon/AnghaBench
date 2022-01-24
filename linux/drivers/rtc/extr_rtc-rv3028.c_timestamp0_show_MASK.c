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
typedef  int /*<<< orphan*/  u8 ;
struct rv3028_data {int /*<<< orphan*/  regmap; } ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  RV3028_TS_COUNT ; 
 int /*<<< orphan*/  RV3028_TS_SEC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rv3028_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct rtc_time*) ; 
 int FUNC5 (struct rtc_time*) ; 
 int FUNC6 (char*,char*,unsigned long long) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct rv3028_data *rv3028 = FUNC1(dev->parent);
	struct rtc_time tm;
	int ret, count;
	u8 date[6];

	ret = FUNC3(rv3028->regmap, RV3028_TS_COUNT, &count);
	if (ret)
		return ret;

	if (!count)
		return 0;

	ret = FUNC2(rv3028->regmap, RV3028_TS_SEC, date,
			       sizeof(date));
	if (ret)
		return ret;

	tm.tm_sec = FUNC0(date[0]);
	tm.tm_min = FUNC0(date[1]);
	tm.tm_hour = FUNC0(date[2]);
	tm.tm_mday = FUNC0(date[3]);
	tm.tm_mon = FUNC0(date[4]) - 1;
	tm.tm_year = FUNC0(date[5]) + 100;

	ret = FUNC5(&tm);
	if (ret)
		return ret;

	return FUNC6(buf, "%llu\n",
		       (unsigned long long)FUNC4(&tm));
}