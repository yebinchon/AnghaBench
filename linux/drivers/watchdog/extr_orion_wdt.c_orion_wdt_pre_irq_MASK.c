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
struct orion_watchdog {int /*<<< orphan*/  wdt; scalar_t__ reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TIMER1_STATUS_BIT ; 
 scalar_t__ TIMER_A370_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *devid)
{
	struct orion_watchdog *dev = devid;

	FUNC0(dev->reg + TIMER_A370_STATUS,
			 TIMER1_STATUS_BIT, 0);
	FUNC1(&dev->wdt);
	return IRQ_HANDLED;
}