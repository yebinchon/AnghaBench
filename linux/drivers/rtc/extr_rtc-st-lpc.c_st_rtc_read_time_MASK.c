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
struct st_rtc {int /*<<< orphan*/  clkrate; int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ LPC_LPT_LSB_OFF ; 
 scalar_t__ LPC_LPT_MSB_OFF ; 
 struct st_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct st_rtc *rtc = FUNC0(dev);
	unsigned long lpt_lsb, lpt_msb;
	unsigned long long lpt;
	unsigned long flags;

	FUNC4(&rtc->lock, flags);

	do {
		lpt_msb = FUNC2(rtc->ioaddr + LPC_LPT_MSB_OFF);
		lpt_lsb = FUNC2(rtc->ioaddr + LPC_LPT_LSB_OFF);
	} while (FUNC2(rtc->ioaddr + LPC_LPT_MSB_OFF) != lpt_msb);

	FUNC5(&rtc->lock, flags);

	lpt = ((unsigned long long)lpt_msb << 32) | lpt_lsb;
	FUNC1(lpt, rtc->clkrate);
	FUNC3(lpt, tm);

	return 0;
}