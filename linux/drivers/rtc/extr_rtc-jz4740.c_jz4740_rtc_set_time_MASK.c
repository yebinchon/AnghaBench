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
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_REG_RTC_SCRATCHPAD ; 
 int /*<<< orphan*/  JZ_REG_RTC_SEC ; 
 struct jz4740_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct jz4740_rtc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *time)
{
	struct jz4740_rtc *rtc = FUNC0(dev);
	int ret;

	ret = FUNC1(rtc, JZ_REG_RTC_SEC, FUNC2(time));
	if (ret)
		return ret;

	return FUNC1(rtc, JZ_REG_RTC_SCRATCHPAD, 0x12345678);
}