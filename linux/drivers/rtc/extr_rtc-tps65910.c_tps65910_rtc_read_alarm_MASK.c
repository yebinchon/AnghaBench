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
typedef  int u32 ;
struct tps65910 {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int NUM_TIME_REGS ; 
 int /*<<< orphan*/  TPS65910_ALARM_SECONDS ; 
 int /*<<< orphan*/  TPS65910_RTC_INTERRUPTS ; 
 int TPS65910_RTC_INTERRUPTS_IT_ALARM ; 
 void* FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tps65910* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	unsigned char alarm_data[NUM_TIME_REGS];
	u32 int_val;
	struct tps65910 *tps = FUNC2(dev->parent);
	int ret;

	ret = FUNC3(tps->regmap, TPS65910_ALARM_SECONDS, alarm_data,
		NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "rtc_read_alarm error %d\n", ret);
		return ret;
	}

	alm->time.tm_sec = FUNC0(alarm_data[0]);
	alm->time.tm_min = FUNC0(alarm_data[1]);
	alm->time.tm_hour = FUNC0(alarm_data[2]);
	alm->time.tm_mday = FUNC0(alarm_data[3]);
	alm->time.tm_mon = FUNC0(alarm_data[4]) - 1;
	alm->time.tm_year = FUNC0(alarm_data[5]) + 100;

	ret = FUNC4(tps->regmap, TPS65910_RTC_INTERRUPTS, &int_val);
	if (ret < 0)
		return ret;

	if (int_val & TPS65910_RTC_INTERRUPTS_IT_ALARM)
		alm->enabled = 1;

	return ret;
}