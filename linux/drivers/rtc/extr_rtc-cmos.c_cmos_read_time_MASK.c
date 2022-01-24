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
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *t)
{
	/*
	 * If pm_trace abused the RTC for storage, set the timespec to 0,
	 * which tells the caller that this RTC value is unusable.
	 */
	if (!FUNC1())
		return -EIO;

	/* REVISIT:  if the clock has a "century" register, use
	 * that instead of the heuristic in mc146818_get_time().
	 * That'll make Y3K compatility (year > 2070) easy!
	 */
	FUNC0(t);
	return 0;
}