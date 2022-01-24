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
struct rx6110_data {int /*<<< orphan*/  regmap; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RTC_NR_TIME ; 
 int /*<<< orphan*/  RX6110_BIT_CTRL_STOP ; 
 int /*<<< orphan*/  RX6110_BIT_FLAG_VLF ; 
 int /*<<< orphan*/  RX6110_REG_CTRL ; 
 int /*<<< orphan*/  RX6110_REG_FLAG ; 
 int /*<<< orphan*/  RX6110_REG_SEC ; 
 struct rx6110_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtc_time*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct rx6110_data *rx6110 = FUNC0(dev);
	u8 data[RTC_NR_TIME];
	int ret;

	ret = FUNC3(tm, data);
	if (ret < 0)
		return ret;

	/* set STOP bit before changing clock/calendar */
	ret = FUNC2(rx6110->regmap, RX6110_REG_CTRL,
				 RX6110_BIT_CTRL_STOP, RX6110_BIT_CTRL_STOP);
	if (ret)
		return ret;

	ret = FUNC1(rx6110->regmap, RX6110_REG_SEC, data,
				RTC_NR_TIME);
	if (ret)
		return ret;

	/* The time in the RTC is valid. Be sure to have VLF cleared. */
	ret = FUNC2(rx6110->regmap, RX6110_REG_FLAG,
				 RX6110_BIT_FLAG_VLF, 0);
	if (ret)
		return ret;

	/* clear STOP bit after changing clock/calendar */
	ret = FUNC2(rx6110->regmap, RX6110_REG_CTRL,
				 RX6110_BIT_CTRL_STOP, 0);

	return ret;
}