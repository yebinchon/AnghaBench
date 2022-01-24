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
struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;
struct abb5zes3_rtc_data {scalar_t__ timer_alarm; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct rtc_wkalrm*) ; 
 int FUNC1 (struct device*,struct rtc_wkalrm*) ; 
 struct abb5zes3_rtc_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct abb5zes3_rtc_data *data = FUNC2(dev);
	int ret;

	if (data->timer_alarm)
		ret = FUNC1(dev, alarm);
	else
		ret = FUNC0(dev, alarm);

	return ret;
}