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
typedef  int u32 ;
struct fotg210_hcd {int command; TYPE_1__* regs; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  command; int /*<<< orphan*/  intr_enable; } ;

/* Variables and functions */
 int CMD_IAAD ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  STS_HALT ; 
 int FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fotg210_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fotg210_hcd *fotg210)
{
	u32 temp;

	FUNC4(&fotg210->lock);

	/* disable any irqs left enabled by previous code */
	FUNC2(fotg210, 0, &fotg210->regs->intr_enable);

	/*
	 * This routine gets called during probe before fotg210->command
	 * has been initialized, so we can't rely on its value.
	 */
	fotg210->command &= ~CMD_RUN;
	temp = FUNC0(fotg210, &fotg210->regs->command);
	temp &= ~(CMD_RUN | CMD_IAAD);
	FUNC2(fotg210, temp, &fotg210->regs->command);

	FUNC5(&fotg210->lock);
	FUNC6(FUNC1(fotg210)->irq);

	return FUNC3(fotg210, &fotg210->regs->status,
			STS_HALT, STS_HALT, 16 * 125);
}