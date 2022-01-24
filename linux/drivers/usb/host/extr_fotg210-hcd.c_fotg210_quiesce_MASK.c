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
typedef  int u32 ;
struct fotg210_hcd {scalar_t__ rh_state; int command; TYPE_1__* regs; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_PSE ; 
 scalar_t__ FOTG210_RH_RUNNING ; 
 int STS_ASS ; 
 int STS_PSS ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_hcd*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fotg210_hcd *fotg210)
{
	u32 temp;

	if (fotg210->rh_state != FOTG210_RH_RUNNING)
		return;

	/* wait for any schedule enables/disables to take effect */
	temp = (fotg210->command << 10) & (STS_ASS | STS_PSS);
	FUNC1(fotg210, &fotg210->regs->status, STS_ASS | STS_PSS, temp,
			16 * 125);

	/* then disable anything that's still active */
	FUNC2(&fotg210->lock);
	fotg210->command &= ~(CMD_ASE | CMD_PSE);
	FUNC0(fotg210, fotg210->command, &fotg210->regs->command);
	FUNC3(&fotg210->lock);

	/* hardware can take 16 microframes to turn off ... */
	FUNC1(fotg210, &fotg210->regs->status, STS_ASS | STS_PSS, 0,
			16 * 125);
}