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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct ni903x_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ NIWD_CONTROL ; 
 int NIWD_CONTROL_PROC_RESET ; 
 int NIWD_CONTROL_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ni903x_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct ni903x_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct ni903x_wdt *wdt = FUNC3(wdd);

	FUNC2(NIWD_CONTROL_RESET | NIWD_CONTROL_PROC_RESET,
	     wdt->io_base + NIWD_CONTROL);

	FUNC1(wdd, wdd->timeout);
	FUNC0(wdt);

	return 0;
}