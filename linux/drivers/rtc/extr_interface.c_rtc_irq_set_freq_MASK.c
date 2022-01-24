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
struct rtc_device {int irq_freq; scalar_t__ pie_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTC_MAX_FREQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct rtc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(struct rtc_device *rtc, int freq)
{
	int err = 0;

	if (freq <= 0 || freq > RTC_MAX_FREQ)
		return -EINVAL;

	rtc->irq_freq = freq;
	while (rtc->pie_enabled && FUNC1(rtc, 1) < 0)
		FUNC0();

	FUNC2(freq, err);
	return err;
}