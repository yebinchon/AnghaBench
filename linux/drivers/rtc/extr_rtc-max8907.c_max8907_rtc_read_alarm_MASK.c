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
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct max8907_rtc {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8907_REG_ALARM0_CNTL ; 
 int /*<<< orphan*/  MAX8907_REG_ALARM0_SEC ; 
 int TIME_NUM ; 
 struct max8907_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct max8907_rtc *rtc = FUNC0(dev);
	u8 regs[TIME_NUM];
	unsigned int val;
	int ret;

	ret = FUNC1(rtc->regmap, MAX8907_REG_ALARM0_SEC, regs,
			       TIME_NUM);
	if (ret < 0)
		return ret;

	FUNC3(regs, &alrm->time);

	ret = FUNC2(rtc->regmap, MAX8907_REG_ALARM0_CNTL, &val);
	if (ret < 0)
		return ret;

	alrm->enabled = !!(val & 0x7f);

	return 0;
}