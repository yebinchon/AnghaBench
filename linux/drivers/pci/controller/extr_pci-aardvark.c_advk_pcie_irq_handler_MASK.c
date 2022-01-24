#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct advk_pcie {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_CTRL_INT_STATUS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PCIE_IRQ_CORE_INT ; 
 int /*<<< orphan*/  FUNC0 (struct advk_pcie*) ; 
 int FUNC1 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct advk_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct advk_pcie *pcie = arg;
	u32 status;

	status = FUNC1(pcie, HOST_CTRL_INT_STATUS_REG);
	if (!(status & PCIE_IRQ_CORE_INT))
		return IRQ_NONE;

	FUNC0(pcie);

	/* Clear interrupt */
	FUNC2(pcie, PCIE_IRQ_CORE_INT, HOST_CTRL_INT_STATUS_REG);

	return IRQ_HANDLED;
}