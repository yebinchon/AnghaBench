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
struct watchdog_device {int dummy; } ;
struct ni903x_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ NIWD_CONTROL ; 
 int NIWD_CONTROL_PET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct ni903x_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct ni903x_wdt *wdt = FUNC2(wdd);
	u8 control;

	control = FUNC0(wdt->io_base + NIWD_CONTROL);
	FUNC1(control | NIWD_CONTROL_PET, wdt->io_base + NIWD_CONTROL);

	return 0;
}