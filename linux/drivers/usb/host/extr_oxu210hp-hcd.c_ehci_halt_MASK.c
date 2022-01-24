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
struct oxu_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; int /*<<< orphan*/  intr_enable; } ;

/* Variables and functions */
 int CMD_RUN ; 
 int STS_HALT ; 
 int FUNC0 (struct oxu_hcd*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct oxu_hcd *oxu)
{
	u32	temp = FUNC1(&oxu->regs->status);

	/* disable any irqs left enabled by previous code */
	FUNC2(0, &oxu->regs->intr_enable);

	if ((temp & STS_HALT) != 0)
		return 0;

	temp = FUNC1(&oxu->regs->command);
	temp &= ~CMD_RUN;
	FUNC2(temp, &oxu->regs->command);
	return FUNC0(oxu, &oxu->regs->status,
			  STS_HALT, STS_HALT, 16 * 125);
}