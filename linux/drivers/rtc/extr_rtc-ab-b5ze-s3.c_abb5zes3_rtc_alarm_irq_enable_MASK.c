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
struct device {int dummy; } ;
struct abb5zes3_rtc_data {scalar_t__ timer_alarm; scalar_t__ irq; } ;

/* Variables and functions */
 int FUNC0 (struct device*,unsigned int) ; 
 int FUNC1 (struct device*,unsigned int) ; 
 struct abb5zes3_rtc_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					 unsigned int enable)
{
	struct abb5zes3_rtc_data *rtc_data = FUNC2(dev);
	int ret = 0;

	if (rtc_data->irq) {
		if (rtc_data->timer_alarm)
			ret = FUNC1(dev, enable);
		else
			ret = FUNC0(dev, enable);
	}

	return ret;
}