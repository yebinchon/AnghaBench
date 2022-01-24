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
typedef  unsigned long u32 ;
struct pic32_wdt {int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned long,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC3 (struct pic32_wdt*) ; 
 unsigned long FUNC4 (struct pic32_wdt*) ; 

__attribute__((used)) static u32 FUNC5(struct pic32_wdt *wdt, struct device *dev)
{
	unsigned long rate;
	u32 period, ps, terminal;

	rate = FUNC1(wdt->clk);

	FUNC2(dev, "wdt: clk_id %d, clk_rate %lu (prescale)\n",
		FUNC3(wdt), rate);

	/* default, prescaler of 32 (i.e. div-by-32) is implicit. */
	rate >>= 5;
	if (!rate)
		return 0;

	/* calculate terminal count from postscaler. */
	ps = FUNC4(wdt);
	terminal = FUNC0(ps);

	/* find time taken (in secs) to reach terminal count */
	period = terminal / rate;
	FUNC2(dev,
		"wdt: clk_rate %lu (postscale) / terminal %d, timeout %dsec\n",
		rate, terminal, period);

	return period;
}