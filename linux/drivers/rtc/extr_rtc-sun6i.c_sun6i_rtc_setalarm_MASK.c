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
struct sun6i_rtc_dev {unsigned long alarm; scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; struct rtc_time time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SUN6I_ALRM_COUNTER ; 
 unsigned long U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct sun6i_rtc_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*,unsigned long*) ; 
 int FUNC3 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sun6i_rtc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *wkalrm)
{
	struct sun6i_rtc_dev *chip = FUNC1(dev);
	struct rtc_time *alrm_tm = &wkalrm->time;
	struct rtc_time tm_now;
	unsigned long time_now = 0;
	unsigned long time_set = 0;
	unsigned long time_gap = 0;
	int ret = 0;

	ret = FUNC3(dev, &tm_now);
	if (ret < 0) {
		FUNC0(dev, "Error in getting time\n");
		return -EINVAL;
	}

	FUNC2(alrm_tm, &time_set);
	FUNC2(&tm_now, &time_now);
	if (time_set <= time_now) {
		FUNC0(dev, "Date to set in the past\n");
		return -EINVAL;
	}

	time_gap = time_set - time_now;

	if (time_gap > U32_MAX) {
		FUNC0(dev, "Date too far in the future\n");
		return -EINVAL;
	}

	FUNC4(0, chip);
	FUNC6(0, chip->base + SUN6I_ALRM_COUNTER);
	FUNC5(100, 300);

	FUNC6(time_gap, chip->base + SUN6I_ALRM_COUNTER);
	chip->alarm = time_set;

	FUNC4(wkalrm->enabled, chip);

	return 0;
}