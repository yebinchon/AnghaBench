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
struct rtc_time {int dummy; } ;
struct rohm_regmap_dev {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
struct bd70528_rtc_data {int dummy; } ;
struct bd70528_rtc {struct rohm_regmap_dev* mfd; } ;
typedef  int /*<<< orphan*/  rtc_data ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_REG_RTC_START ; 
 int FUNC0 (struct bd70528_rtc*,int*) ; 
 int FUNC1 (struct bd70528_rtc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct bd70528_rtc* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bd70528_rtc_data*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bd70528_rtc_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtc_time*,struct bd70528_rtc_data*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *t)
{
	int ret, tmpret, old_states;
	struct bd70528_rtc_data rtc_data;
	struct bd70528_rtc *r = FUNC3(dev);
	struct rohm_regmap_dev *bd70528 = r->mfd;

	ret = FUNC0(r, &old_states);
	if (ret)
		return ret;

	tmpret = FUNC4(bd70528->regmap,
				  BD70528_REG_RTC_START, &rtc_data,
				  sizeof(rtc_data));
	if (tmpret) {
		FUNC2(dev, "Failed to read RTC time registers\n");
		goto renable_out;
	}
	FUNC6(t, &rtc_data);

	tmpret = FUNC5(bd70528->regmap,
				   BD70528_REG_RTC_START, &rtc_data,
				   sizeof(rtc_data));
	if (tmpret) {
		FUNC2(dev, "Failed to set RTC time\n");
		goto renable_out;
	}

renable_out:
	ret = FUNC1(r, old_states);
	if (tmpret)
		ret = tmpret;

	return ret;
}