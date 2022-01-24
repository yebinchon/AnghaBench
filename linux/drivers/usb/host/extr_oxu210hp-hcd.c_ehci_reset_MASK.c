#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct oxu_hcd {TYPE_1__* regs; int /*<<< orphan*/  next_statechange; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESET ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct oxu_hcd*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct oxu_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_2__* FUNC2 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct oxu_hcd *oxu)
{
	int	retval;
	u32	command = FUNC3(&oxu->regs->command);

	command |= CMD_RESET;
	FUNC0(oxu, "reset", command);
	FUNC5(command, &oxu->regs->command);
	FUNC2(oxu)->state = HC_STATE_HALT;
	oxu->next_statechange = jiffies;
	retval = FUNC1(oxu, &oxu->regs->command,
			    CMD_RESET, 0, 250 * 1000);

	if (retval)
		return retval;

	FUNC4(oxu);

	return retval;
}