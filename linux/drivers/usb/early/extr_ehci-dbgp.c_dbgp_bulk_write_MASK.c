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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pids; int /*<<< orphan*/  address; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  DBGP_GO ; 
 int /*<<< orphan*/  DBGP_LOOPS ; 
 int DBGP_MAX_PACKET ; 
 int /*<<< orphan*/  DBGP_OUT ; 
 int /*<<< orphan*/  USB_PID_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ehci_debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned devnum, unsigned endpoint,
			 const char *bytes, int size)
{
	int ret;
	u32 addr;
	u32 pids, ctrl;

	if (size > DBGP_MAX_PACKET)
		return -1;

	addr = FUNC0(devnum, endpoint);

	pids = FUNC5(&ehci_debug->pids);
	pids = FUNC2(pids, USB_PID_OUT);

	ctrl = FUNC5(&ehci_debug->control);
	ctrl = FUNC1(ctrl, size);
	ctrl |= DBGP_OUT;
	ctrl |= DBGP_GO;

	FUNC3(bytes, size);
	FUNC6(addr, &ehci_debug->address);
	FUNC6(pids, &ehci_debug->pids);
	ret = FUNC4(ctrl, DBGP_LOOPS);

	return ret;
}