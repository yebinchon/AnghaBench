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
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  PALMAS_ALARM_SECONDS_REG ; 
 int PALMAS_NUM_TIME_REGS ; 
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct palmas* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct device*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	unsigned char alarm_data[PALMAS_NUM_TIME_REGS];
	struct palmas *palmas = FUNC2(dev->parent);
	int ret;

	ret = FUNC4(dev, 0);
	if (ret < 0) {
		FUNC1(dev, "Disable RTC alarm failed\n");
		return ret;
	}

	alarm_data[0] = FUNC0(alm->time.tm_sec);
	alarm_data[1] = FUNC0(alm->time.tm_min);
	alarm_data[2] = FUNC0(alm->time.tm_hour);
	alarm_data[3] = FUNC0(alm->time.tm_mday);
	alarm_data[4] = FUNC0(alm->time.tm_mon + 1);
	alarm_data[5] = FUNC0(alm->time.tm_year - 100);

	ret = FUNC3(palmas, PALMAS_RTC_BASE,
		PALMAS_ALARM_SECONDS_REG, alarm_data, PALMAS_NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "ALARM_SECONDS_REG write failed, err = %d\n", ret);
		return ret;
	}

	if (alm->enabled)
		ret = FUNC4(dev, 1);
	return ret;
}