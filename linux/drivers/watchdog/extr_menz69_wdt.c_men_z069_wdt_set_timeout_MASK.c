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
typedef  int u16 ;
struct watchdog_device {unsigned int timeout; } ;
struct men_z069_drv {scalar_t__ base; } ;

/* Variables and functions */
 unsigned int MEN_Z069_TIMER_FREQ ; 
 scalar_t__ MEN_Z069_WTR ; 
 int MEN_Z069_WTR_WDEN ; 
 scalar_t__ MEN_Z069_WVR ; 
 int FUNC0 (scalar_t__) ; 
 struct men_z069_drv* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt,
				    unsigned int timeout)
{
	struct men_z069_drv *drv = FUNC1(wdt);
	u16 reg, val, ena;

	wdt->timeout = timeout;
	val = timeout * MEN_Z069_TIMER_FREQ;

	reg = FUNC0(drv->base + MEN_Z069_WVR);
	ena = reg & MEN_Z069_WTR_WDEN;
	reg = ena | val;
	FUNC2(reg, drv->base + MEN_Z069_WTR);

	return 0;
}