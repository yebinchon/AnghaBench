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
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct bd70528_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bd70528_rtc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bd70528_rtc_data*,struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *t)
{
	struct bd70528_rtc *r = FUNC1(dev);
	struct rohm_regmap_dev *bd70528 = r->mfd;
	struct bd70528_rtc_data rtc_data;
	int ret;

	/* read the RTC date and time registers all at once */
	ret = FUNC2(bd70528->regmap,
			       BD70528_REG_RTC_START, &rtc_data,
			       sizeof(rtc_data));
	if (ret) {
		FUNC0(dev, "Failed to read RTC time (err %d)\n", ret);
		return ret;
	}

	FUNC3(&rtc_data, t);

	return 0;
}