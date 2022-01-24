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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct nic7018_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ WDT_CTRL ; 
 int WDT_CTRL_RESET_EN ; 
 scalar_t__ WDT_RELOAD_CTRL ; 
 scalar_t__ WDT_RELOAD_PORT ; 
 int WDT_RELOAD_PORT_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct nic7018_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct nic7018_wdt *wdt = FUNC3(wdd);
	u8 control;

	FUNC1(wdd, wdd->timeout);

	control = FUNC0(wdt->io_base + WDT_RELOAD_CTRL);
	FUNC2(control | WDT_RELOAD_PORT_EN, wdt->io_base + WDT_RELOAD_CTRL);

	FUNC2(1, wdt->io_base + WDT_RELOAD_PORT);

	control = FUNC0(wdt->io_base + WDT_CTRL);
	FUNC2(control | WDT_CTRL_RESET_EN, wdt->io_base + WDT_CTRL);

	return 0;
}