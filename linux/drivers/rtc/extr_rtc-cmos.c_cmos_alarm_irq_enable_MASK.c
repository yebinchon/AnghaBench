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
struct cmos_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_AIE ; 
 int /*<<< orphan*/  FUNC0 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmos_rtc*,int /*<<< orphan*/ ) ; 
 struct cmos_rtc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int enabled)
{
	struct cmos_rtc	*cmos = FUNC2(dev);
	unsigned long	flags;

	FUNC3(&rtc_lock, flags);

	if (enabled)
		FUNC1(cmos, RTC_AIE);
	else
		FUNC0(cmos, RTC_AIE);

	FUNC4(&rtc_lock, flags);
	return 0;
}