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
struct v3_pci {scalar_t__ map; scalar_t__ base; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INTEGRATOR_SC_PCI_ENABLE ; 
 int INTEGRATOR_SC_PCI_INTCLR ; 
 int /*<<< orphan*/  INTEGRATOR_SC_PCI_OFFSET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ V3_LB_ISTAT ; 
 int V3_LB_ISTAT_DMA0 ; 
 int V3_LB_ISTAT_DMA1 ; 
 int V3_LB_ISTAT_I2O_QWR ; 
 int V3_LB_ISTAT_MAILBOX ; 
 int V3_LB_ISTAT_PCI_INT ; 
 int V3_LB_ISTAT_PCI_PERR ; 
 int V3_LB_ISTAT_PCI_RD ; 
 int V3_LB_ISTAT_PCI_WR ; 
 scalar_t__ V3_PCI_STAT ; 
 int V3_PCI_STAT_M_ABORT_ERR ; 
 int V3_PCI_STAT_PAR_ERR ; 
 int V3_PCI_STAT_SYS_ERR ; 
 int V3_PCI_STAT_T_ABORT_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct v3_pci *v3 = data;
	struct device *dev = v3->dev;
	u32 status;

	status = FUNC3(v3->base + V3_PCI_STAT);
	if (status & V3_PCI_STAT_PAR_ERR)
		FUNC0(dev, "parity error interrupt\n");
	if (status & V3_PCI_STAT_SYS_ERR)
		FUNC0(dev, "system error interrupt\n");
	if (status & V3_PCI_STAT_M_ABORT_ERR)
		FUNC0(dev, "master abort error interrupt\n");
	if (status & V3_PCI_STAT_T_ABORT_ERR)
		FUNC0(dev, "target abort error interrupt\n");
	FUNC6(status, v3->base + V3_PCI_STAT);

	status = FUNC2(v3->base + V3_LB_ISTAT);
	if (status & V3_LB_ISTAT_MAILBOX)
		FUNC1(dev, "PCI mailbox interrupt\n");
	if (status & V3_LB_ISTAT_PCI_RD)
		FUNC0(dev, "PCI target LB->PCI READ abort interrupt\n");
	if (status & V3_LB_ISTAT_PCI_WR)
		FUNC0(dev, "PCI target LB->PCI WRITE abort interrupt\n");
	if (status &  V3_LB_ISTAT_PCI_INT)
		FUNC1(dev, "PCI pin interrupt\n");
	if (status & V3_LB_ISTAT_PCI_PERR)
		FUNC0(dev, "PCI parity error interrupt\n");
	if (status & V3_LB_ISTAT_I2O_QWR)
		FUNC1(dev, "I2O inbound post queue interrupt\n");
	if (status & V3_LB_ISTAT_DMA1)
		FUNC1(dev, "DMA channel 1 interrupt\n");
	if (status & V3_LB_ISTAT_DMA0)
		FUNC1(dev, "DMA channel 0 interrupt\n");
	/* Clear all possible interrupts on the local bus */
	FUNC5(0, v3->base + V3_LB_ISTAT);
	if (v3->map)
		FUNC4(v3->map, INTEGRATOR_SC_PCI_OFFSET,
			     INTEGRATOR_SC_PCI_ENABLE |
			     INTEGRATOR_SC_PCI_INTCLR);

	return IRQ_HANDLED;
}