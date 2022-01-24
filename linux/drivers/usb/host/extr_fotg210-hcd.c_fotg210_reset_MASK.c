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
struct fotg210_hcd {scalar_t__ resuming_ports; scalar_t__ suspended_ports; scalar_t__ port_c_suspend; int /*<<< orphan*/ * debug; TYPE_1__* regs; int /*<<< orphan*/  next_statechange; int /*<<< orphan*/  rh_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESET ; 
 int /*<<< orphan*/  FOTG210_RH_HALTED ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct fotg210_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct fotg210_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC7(struct fotg210_hcd *fotg210)
{
	int retval;
	u32 command = FUNC3(fotg210, &fotg210->regs->command);

	/* If the EHCI debug controller is active, special care must be
	 * taken before and after a host controller reset
	 */
	if (fotg210->debug && !FUNC2(FUNC4(fotg210)))
		fotg210->debug = NULL;

	command |= CMD_RESET;
	FUNC0(fotg210, "reset", command);
	FUNC5(fotg210, command, &fotg210->regs->command);
	fotg210->rh_state = FOTG210_RH_HALTED;
	fotg210->next_statechange = jiffies;
	retval = FUNC6(fotg210, &fotg210->regs->command,
			CMD_RESET, 0, 250 * 1000);

	if (retval)
		return retval;

	if (fotg210->debug)
		FUNC1(FUNC4(fotg210));

	fotg210->port_c_suspend = fotg210->suspended_ports =
			fotg210->resuming_ports = 0;
	return retval;
}