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
struct orion_watchdog {TYPE_1__* data; scalar_t__ reg; scalar_t__ rstout; scalar_t__ rstout_mask; } ;
struct TYPE_2__ {int rstout_mask_bit; int rstout_enable_bit; int wdt_enable_bit; } ;

/* Variables and functions */
 scalar_t__ TIMER_CTRL ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct orion_watchdog *dev)
{
	bool masked, enabled, running;

	masked = FUNC0(dev->rstout_mask) & dev->data->rstout_mask_bit;
	enabled = FUNC0(dev->rstout) & dev->data->rstout_enable_bit;
	running = FUNC0(dev->reg + TIMER_CTRL) & dev->data->wdt_enable_bit;

	return !masked && enabled && running;
}