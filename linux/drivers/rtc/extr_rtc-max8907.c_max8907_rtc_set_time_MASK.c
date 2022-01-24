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
struct rtc_time {int dummy; } ;
struct max8907_rtc {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX8907_REG_RTC_SEC ; 
 int TIME_NUM ; 
 struct max8907_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct max8907_rtc *rtc = FUNC0(dev);
	u8 regs[TIME_NUM];

	FUNC2(tm, regs);

	return FUNC1(rtc->regmap, MAX8907_REG_RTC_SEC, regs,
				 TIME_NUM);
}