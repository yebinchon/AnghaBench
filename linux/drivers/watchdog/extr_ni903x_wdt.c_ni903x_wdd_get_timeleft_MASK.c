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
typedef  int u8 ;
typedef  int u32 ;
struct watchdog_device {int dummy; } ;
struct ni903x_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ NIWD_CONTROL ; 
 int NIWD_CONTROL_CAPTURECOUNTER ; 
 scalar_t__ NIWD_COUNTER0 ; 
 scalar_t__ NIWD_COUNTER1 ; 
 scalar_t__ NIWD_COUNTER2 ; 
 int NIWD_PERIOD_NS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct ni903x_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdd)
{
	struct ni903x_wdt *wdt = FUNC2(wdd);
	u8 control, counter0, counter1, counter2;
	u32 counter;

	control = FUNC0(wdt->io_base + NIWD_CONTROL);
	control |= NIWD_CONTROL_CAPTURECOUNTER;
	FUNC1(control, wdt->io_base + NIWD_CONTROL);

	counter2 = FUNC0(wdt->io_base + NIWD_COUNTER2);
	counter1 = FUNC0(wdt->io_base + NIWD_COUNTER1);
	counter0 = FUNC0(wdt->io_base + NIWD_COUNTER0);

	counter = (counter2 << 16) | (counter1 << 8) | counter0;

	return counter / (1000000000 / NIWD_PERIOD_NS);
}