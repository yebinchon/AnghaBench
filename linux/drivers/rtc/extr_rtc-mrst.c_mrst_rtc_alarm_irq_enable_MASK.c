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
struct mrst_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_AIE ; 
 struct mrst_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrst_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mrst_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int enabled)
{
	struct mrst_rtc	*mrst = FUNC0(dev);
	unsigned long	flags;

	FUNC3(&rtc_lock, flags);
	if (enabled)
		FUNC2(mrst, RTC_AIE);
	else
		FUNC1(mrst, RTC_AIE);
	FUNC4(&rtc_lock, flags);
	return 0;
}