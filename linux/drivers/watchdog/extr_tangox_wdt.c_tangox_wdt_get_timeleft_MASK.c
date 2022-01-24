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
typedef  int u32 ;
struct watchdog_device {int dummy; } ;
struct tangox_wdt_device {int clk_rate; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WD_COUNTER ; 
 int FUNC0 (scalar_t__) ; 
 struct tangox_wdt_device* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdt)
{
	struct tangox_wdt_device *dev = FUNC1(wdt);
	u32 count;

	count = FUNC0(dev->base + WD_COUNTER);

	if (!count)
		return 0;

	return (count - 1) / dev->clk_rate;
}