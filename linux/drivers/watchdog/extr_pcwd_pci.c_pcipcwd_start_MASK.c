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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; scalar_t__ io_addr; } ;

/* Variables and functions */
 scalar_t__ VERBOSE ; 
 int WD_PCI_WDIS ; 
 scalar_t__ debug ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void)
{
	int stat_reg;

	FUNC4(&pcipcwd_private.io_lock);
	FUNC1(0x00, pcipcwd_private.io_addr + 3);
	FUNC6(1000);

	stat_reg = FUNC0(pcipcwd_private.io_addr + 2);
	FUNC5(&pcipcwd_private.io_lock);

	if (stat_reg & WD_PCI_WDIS) {
		FUNC3("Card timer not enabled\n");
		return -1;
	}

	if (debug >= VERBOSE)
		FUNC2("Watchdog started\n");

	return 0;
}