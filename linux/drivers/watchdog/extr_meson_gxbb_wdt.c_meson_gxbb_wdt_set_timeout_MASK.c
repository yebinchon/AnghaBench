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
struct watchdog_device {unsigned int timeout; } ;
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ GXBB_WDT_TCNT_REG ; 
 unsigned long GXBB_WDT_TCNT_SETUP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 struct meson_gxbb_wdt* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt_dev,
				      unsigned int timeout)
{
	struct meson_gxbb_wdt *data = FUNC1(wdt_dev);
	unsigned long tcnt = timeout * 1000;

	if (tcnt > GXBB_WDT_TCNT_SETUP_MASK)
		tcnt = GXBB_WDT_TCNT_SETUP_MASK;

	wdt_dev->timeout = timeout;

	FUNC0(wdt_dev);

	FUNC2(tcnt, data->reg_base + GXBB_WDT_TCNT_REG);

	return 0;
}