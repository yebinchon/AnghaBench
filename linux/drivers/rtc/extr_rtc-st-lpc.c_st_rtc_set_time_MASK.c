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
struct st_rtc {unsigned long long clkrate; int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ LPC_LPT_LSB_OFF ; 
 scalar_t__ LPC_LPT_MSB_OFF ; 
 scalar_t__ LPC_LPT_START_OFF ; 
 struct st_rtc* FUNC0 (struct device*) ; 
 unsigned long long FUNC1 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct st_rtc *rtc = FUNC0(dev);
	unsigned long long lpt, secs;
	unsigned long flags;

	secs = FUNC1(tm);

	lpt = (unsigned long long)secs * rtc->clkrate;

	FUNC2(&rtc->lock, flags);

	FUNC4(lpt >> 32, rtc->ioaddr + LPC_LPT_MSB_OFF);
	FUNC4(lpt, rtc->ioaddr + LPC_LPT_LSB_OFF);
	FUNC4(1, rtc->ioaddr + LPC_LPT_START_OFF);

	FUNC3(&rtc->lock, flags);

	return 0;
}