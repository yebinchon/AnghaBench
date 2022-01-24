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
struct tps65910 {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int NUM_TIME_REGS ; 
 int /*<<< orphan*/  TPS65910_ALARM_SECONDS ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tps65910* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct device*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	unsigned char alarm_data[NUM_TIME_REGS];
	struct tps65910 *tps = FUNC2(dev->parent);
	int ret;

	ret = FUNC4(dev, 0);
	if (ret)
		return ret;

	alarm_data[0] = FUNC0(alm->time.tm_sec);
	alarm_data[1] = FUNC0(alm->time.tm_min);
	alarm_data[2] = FUNC0(alm->time.tm_hour);
	alarm_data[3] = FUNC0(alm->time.tm_mday);
	alarm_data[4] = FUNC0(alm->time.tm_mon + 1);
	alarm_data[5] = FUNC0(alm->time.tm_year - 100);

	/* update all the alarm registers in one shot */
	ret = FUNC3(tps->regmap, TPS65910_ALARM_SECONDS,
		alarm_data, NUM_TIME_REGS);
	if (ret) {
		FUNC1(dev, "rtc_set_alarm error %d\n", ret);
		return ret;
	}

	if (alm->enabled)
		ret = FUNC4(dev, 1);

	return ret;
}