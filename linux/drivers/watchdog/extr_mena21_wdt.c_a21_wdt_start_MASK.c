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
struct a21_wdt_drv {int /*<<< orphan*/ * gpios; } ;

/* Variables and functions */
 size_t GPIO_WD_ENAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct a21_wdt_drv* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdt)
{
	struct a21_wdt_drv *drv = FUNC1(wdt);

	FUNC0(drv->gpios[GPIO_WD_ENAB], 1);

	return 0;
}