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
struct rtc_device {int pie_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct rtc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(struct rtc_device *rtc, int enabled)
{
	int err = 0;

	while (FUNC1(rtc, enabled) < 0)
		FUNC0();

	rtc->pie_enabled = enabled;

	FUNC2(enabled, err);
	return err;
}