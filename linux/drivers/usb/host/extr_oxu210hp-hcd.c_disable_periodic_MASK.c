#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct oxu_hcd {int next_uframe; TYPE_1__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_PSE ; 
 int /*<<< orphan*/  HC_STATE_HALT ; 
 int /*<<< orphan*/  STS_PSS ; 
 int FUNC0 (struct oxu_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (struct oxu_hcd*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct oxu_hcd *oxu)
{
	u32 cmd;
	int status;

	/* did setting PSE not take effect yet?
	 * takes effect only at frame boundaries...
	 */
	status = FUNC0(oxu, &oxu->regs->status, STS_PSS, STS_PSS, 9 * 125);
	if (status != 0) {
		FUNC1(oxu)->state = HC_STATE_HALT;
		FUNC3(FUNC1(oxu));
		return status;
	}

	cmd = FUNC2(&oxu->regs->command) & ~CMD_PSE;
	FUNC4(cmd, &oxu->regs->command);
	/* posted write ... */

	oxu->next_uframe = -1;
	return 0;
}