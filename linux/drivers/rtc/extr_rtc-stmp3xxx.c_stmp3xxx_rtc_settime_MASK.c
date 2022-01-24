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
struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ STMP3XXX_RTC_SECONDS ; 
 struct stmp3xxx_rtc_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*) ; 
 int FUNC2 (struct stmp3xxx_rtc_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *rtc_tm)
{
	struct stmp3xxx_rtc_data *rtc_data = FUNC0(dev);

	FUNC3(FUNC1(rtc_tm), rtc_data->io + STMP3XXX_RTC_SECONDS);
	return FUNC2(rtc_data);
}