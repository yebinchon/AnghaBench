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

/* Variables and functions */
 int /*<<< orphan*/  RTC_RTSR ; 
 int RTC_RTSR_HZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, int en)
{
	if (!en) {
		FUNC2(FUNC1(RTC_RTSR) & ~RTC_RTSR_HZE, RTC_RTSR);
	} else {
		/* re-enable the device, and check it is ok */
		if ((FUNC1(RTC_RTSR) & RTC_RTSR_HZE) == 0) {
			FUNC0(dev, "rtc disabled, re-enabling\n");
			FUNC2(FUNC1(RTC_RTSR) | RTC_RTSR_HZE, RTC_RTSR);
		}
	}
}