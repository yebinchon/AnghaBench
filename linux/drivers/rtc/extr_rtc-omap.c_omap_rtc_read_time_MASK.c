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
struct omap_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 
 struct omap_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct omap_rtc*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_rtc*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct omap_rtc *rtc = FUNC1(dev);

	/* we don't report wday/yday/isdst ... */
	FUNC2();
	FUNC5(rtc);
	FUNC4(rtc, tm);
	FUNC3();

	FUNC0(tm);

	return 0;
}