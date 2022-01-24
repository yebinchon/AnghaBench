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
struct rockchip_pcie {struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PCIE_CLIENT_INT_LOCAL ; 
 int PCIE_CLIENT_INT_PHY ; 
 int /*<<< orphan*/  PCIE_CLIENT_INT_STATUS ; 
 int PCIE_CORE_INT_CRFO ; 
 int PCIE_CORE_INT_CRFPE ; 
 int PCIE_CORE_INT_CT ; 
 int PCIE_CORE_INT_FCE ; 
 int PCIE_CORE_INT_MMVC ; 
 int PCIE_CORE_INT_MTR ; 
 int PCIE_CORE_INT_PE ; 
 int PCIE_CORE_INT_PRFO ; 
 int PCIE_CORE_INT_PRFPE ; 
 int PCIE_CORE_INT_RRPE ; 
 int PCIE_CORE_INT_RT ; 
 int PCIE_CORE_INT_RTR ; 
 int /*<<< orphan*/  PCIE_CORE_INT_STATUS ; 
 int PCIE_CORE_INT_UCR ; 
 int PCIE_CORE_INT_UTC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_pcie*) ; 
 int FUNC2 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_pcie*) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct rockchip_pcie *rockchip = arg;
	struct device *dev = rockchip->dev;
	u32 reg;
	u32 sub_reg;

	reg = FUNC2(rockchip, PCIE_CLIENT_INT_STATUS);
	if (reg & PCIE_CLIENT_INT_LOCAL) {
		FUNC0(dev, "local interrupt received\n");
		sub_reg = FUNC2(rockchip, PCIE_CORE_INT_STATUS);
		if (sub_reg & PCIE_CORE_INT_PRFPE)
			FUNC0(dev, "parity error detected while reading from the PNP receive FIFO RAM\n");

		if (sub_reg & PCIE_CORE_INT_CRFPE)
			FUNC0(dev, "parity error detected while reading from the Completion Receive FIFO RAM\n");

		if (sub_reg & PCIE_CORE_INT_RRPE)
			FUNC0(dev, "parity error detected while reading from replay buffer RAM\n");

		if (sub_reg & PCIE_CORE_INT_PRFO)
			FUNC0(dev, "overflow occurred in the PNP receive FIFO\n");

		if (sub_reg & PCIE_CORE_INT_CRFO)
			FUNC0(dev, "overflow occurred in the completion receive FIFO\n");

		if (sub_reg & PCIE_CORE_INT_RT)
			FUNC0(dev, "replay timer timed out\n");

		if (sub_reg & PCIE_CORE_INT_RTR)
			FUNC0(dev, "replay timer rolled over after 4 transmissions of the same TLP\n");

		if (sub_reg & PCIE_CORE_INT_PE)
			FUNC0(dev, "phy error detected on receive side\n");

		if (sub_reg & PCIE_CORE_INT_MTR)
			FUNC0(dev, "malformed TLP received from the link\n");

		if (sub_reg & PCIE_CORE_INT_UCR)
			FUNC0(dev, "malformed TLP received from the link\n");

		if (sub_reg & PCIE_CORE_INT_FCE)
			FUNC0(dev, "an error was observed in the flow control advertisements from the other side\n");

		if (sub_reg & PCIE_CORE_INT_CT)
			FUNC0(dev, "a request timed out waiting for completion\n");

		if (sub_reg & PCIE_CORE_INT_UTC)
			FUNC0(dev, "unmapped TC error\n");

		if (sub_reg & PCIE_CORE_INT_MMVC)
			FUNC0(dev, "MSI mask register changes\n");

		FUNC4(rockchip, sub_reg, PCIE_CORE_INT_STATUS);
	} else if (reg & PCIE_CLIENT_INT_PHY) {
		FUNC0(dev, "phy link changes\n");
		FUNC3(rockchip);
		FUNC1(rockchip);
	}

	FUNC4(rockchip, reg & PCIE_CLIENT_INT_LOCAL,
			    PCIE_CLIENT_INT_STATUS);

	return IRQ_HANDLED;
}