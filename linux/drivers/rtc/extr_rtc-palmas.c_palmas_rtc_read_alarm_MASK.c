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
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_ALARM_SECONDS_REG ; 
 int PALMAS_NUM_TIME_REGS ; 
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_INTERRUPTS_REG ; 
 int PALMAS_RTC_INTERRUPTS_REG_IT_ALARM ; 
 void* FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct palmas* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	unsigned char alarm_data[PALMAS_NUM_TIME_REGS];
	u32 int_val;
	struct palmas *palmas = FUNC2(dev->parent);
	int ret;

	ret = FUNC3(palmas, PALMAS_RTC_BASE,
			PALMAS_ALARM_SECONDS_REG,
			alarm_data, PALMAS_NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "RTC_ALARM_SECONDS read failed, err = %d\n", ret);
		return ret;
	}

	alm->time.tm_sec = FUNC0(alarm_data[0]);
	alm->time.tm_min = FUNC0(alarm_data[1]);
	alm->time.tm_hour = FUNC0(alarm_data[2]);
	alm->time.tm_mday = FUNC0(alarm_data[3]);
	alm->time.tm_mon = FUNC0(alarm_data[4]) - 1;
	alm->time.tm_year = FUNC0(alarm_data[5]) + 100;

	ret = FUNC4(palmas, PALMAS_RTC_BASE, PALMAS_RTC_INTERRUPTS_REG,
			&int_val);
	if (ret < 0) {
		FUNC1(dev, "RTC_INTERRUPTS reg read failed, err = %d\n", ret);
		return ret;
	}

	if (int_val & PALMAS_RTC_INTERRUPTS_REG_IT_ALARM)
		alm->enabled = 1;
	return ret;
}