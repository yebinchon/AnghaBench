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
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;

/* Variables and functions */
 unsigned long GXBB_WDT_TCNT_CNT_SHIFT ; 
 scalar_t__ GXBB_WDT_TCNT_REG ; 
 unsigned long GXBB_WDT_TCNT_SETUP_MASK ; 
 unsigned long FUNC0 (scalar_t__) ; 
 struct meson_gxbb_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC2(struct watchdog_device *wdt_dev)
{
	struct meson_gxbb_wdt *data = FUNC1(wdt_dev);
	unsigned long reg;

	reg = FUNC0(data->reg_base + GXBB_WDT_TCNT_REG);

	return ((reg & GXBB_WDT_TCNT_SETUP_MASK) -
		(reg >> GXBB_WDT_TCNT_CNT_SHIFT)) / 1000;
}