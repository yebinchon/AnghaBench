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
typedef  int /*<<< orphan*/  tmp ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; unsigned char tm_wday; int tm_mon; int tm_year; } ;
struct pcf85363 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t CTRL_STOP_EN ; 
 size_t DT_100THS ; 
 size_t DT_DAYS ; 
 size_t DT_HOURS ; 
 size_t DT_MINUTES ; 
 size_t DT_MONTHS ; 
 size_t DT_SECS ; 
 size_t DT_WEEKDAYS ; 
 size_t DT_YEARS ; 
 int /*<<< orphan*/  RESET_CPR ; 
 int /*<<< orphan*/  STOP_EN_STOP ; 
 unsigned char FUNC0 (int) ; 
 struct pcf85363* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct pcf85363 *pcf85363 = FUNC1(dev);
	unsigned char tmp[11];
	unsigned char *buf = &tmp[2];
	int ret;

	tmp[0] = STOP_EN_STOP;
	tmp[1] = RESET_CPR;

	buf[DT_100THS] = 0;
	buf[DT_SECS] = FUNC0(tm->tm_sec);
	buf[DT_MINUTES] = FUNC0(tm->tm_min);
	buf[DT_HOURS] = FUNC0(tm->tm_hour);
	buf[DT_DAYS] = FUNC0(tm->tm_mday);
	buf[DT_WEEKDAYS] = tm->tm_wday;
	buf[DT_MONTHS] = FUNC0(tm->tm_mon + 1);
	buf[DT_YEARS] = FUNC0(tm->tm_year % 100);

	ret = FUNC2(pcf85363->regmap, CTRL_STOP_EN,
				tmp, 2);
	if (ret)
		return ret;

	ret = FUNC2(pcf85363->regmap, DT_100THS,
				buf, sizeof(tmp) - 2);
	if (ret)
		return ret;

	return FUNC3(pcf85363->regmap, CTRL_STOP_EN, 0);
}