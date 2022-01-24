#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct watchdog_device {int dummy; } ;
struct orion_watchdog {unsigned int clk_rate; TYPE_1__* data; scalar_t__ reg; } ;
struct TYPE_2__ {scalar_t__ wdt_counter_offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 struct orion_watchdog* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdt_dev)
{
	struct orion_watchdog *dev = FUNC1(wdt_dev);
	return FUNC0(dev->reg + dev->data->wdt_counter_offset) / dev->clk_rate;
}