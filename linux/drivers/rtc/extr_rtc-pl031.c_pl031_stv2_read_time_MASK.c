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
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTC_DR ; 
 scalar_t__ RTC_YDR ; 
 struct pl031_local* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct pl031_local *ldata = FUNC0(dev);

	FUNC1(FUNC2(ldata->base + RTC_DR),
			FUNC2(ldata->base + RTC_YDR), tm);

	return 0;
}