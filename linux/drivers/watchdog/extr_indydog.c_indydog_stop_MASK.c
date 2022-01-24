#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cpuctrl0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGIMC_CCTRL0_WDOG ; 
 int /*<<< orphan*/  indydog_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* sgimc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(&indydog_lock);
	sgimc->cpuctrl0 &= ~SGIMC_CCTRL0_WDOG;
	FUNC2(&indydog_lock);

	FUNC0("Stopped watchdog timer\n");
}