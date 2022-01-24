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
struct watchdog_device {int dummy; } ;
struct pic32_wdt {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WDTCON_ON ; 
 scalar_t__ WDTCON_REG ; 
 int /*<<< orphan*/  FUNC1 (struct pic32_wdt*) ; 
 struct pic32_wdt* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct pic32_wdt *wdt = FUNC2(wdd);

	FUNC3(WDTCON_ON, FUNC0(wdt->regs + WDTCON_REG));
	FUNC1(wdt);

	return 0;
}