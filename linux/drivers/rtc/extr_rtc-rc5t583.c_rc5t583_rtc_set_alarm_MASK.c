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
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rc5t583 {int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int NUM_YAL_REGS ; 
 int /*<<< orphan*/  RC5T583_RTC_AY_MIN ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct rc5t583* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	struct rc5t583 *rc5t583 = FUNC2(dev->parent);
	unsigned char alarm_data[NUM_YAL_REGS];
	int ret;

	ret = FUNC3(dev, 0);
	if (ret)
		return ret;

	alarm_data[0] = FUNC0(alm->time.tm_min);
	alarm_data[1] = FUNC0(alm->time.tm_hour);
	alarm_data[2] = FUNC0(alm->time.tm_mday);
	alarm_data[3] = FUNC0(alm->time.tm_mon + 1);
	alarm_data[4] = FUNC0(alm->time.tm_year - 100);

	ret = FUNC4(rc5t583->regmap, RC5T583_RTC_AY_MIN, alarm_data,
		NUM_YAL_REGS);
	if (ret) {
		FUNC1(dev, "rtc_set_alarm error %d\n", ret);
		return ret;
	}

	if (alm->enabled)
		ret = FUNC3(dev, 1);

	return ret;
}