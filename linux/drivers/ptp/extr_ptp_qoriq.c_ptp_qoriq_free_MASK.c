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
struct ptp_qoriq_registers {TYPE_1__* ctrl_regs; } ;
struct ptp_qoriq {int /*<<< orphan*/  irq; int /*<<< orphan*/  base; int /*<<< orphan*/  clock; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;struct ptp_qoriq_registers regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  tmr_ctrl; int /*<<< orphan*/  tmr_temask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ptp_qoriq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ptp_qoriq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct ptp_qoriq *ptp_qoriq)
{
	struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;

	ptp_qoriq->write(&regs->ctrl_regs->tmr_temask, 0);
	ptp_qoriq->write(&regs->ctrl_regs->tmr_ctrl,   0);

	FUNC3(ptp_qoriq);
	FUNC2(ptp_qoriq->clock);
	FUNC1(ptp_qoriq->base);
	FUNC0(ptp_qoriq->irq, ptp_qoriq);
}