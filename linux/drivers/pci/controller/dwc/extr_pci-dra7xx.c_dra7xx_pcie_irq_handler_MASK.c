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
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {struct dw_pcie_ep ep; struct device* dev; } ;
struct dra7xx_pcie {scalar_t__ mode; struct dw_pcie* pci; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CFG_BME_EVT ; 
 int CFG_MSE_EVT ; 
 scalar_t__ DW_PCIE_EP_TYPE ; 
 int ERR_AXI ; 
 int ERR_COR ; 
 int ERR_ECRC ; 
 int ERR_FATAL ; 
 int ERR_NONFATAL ; 
 int ERR_SYS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LINK_REQ_RST ; 
 int LINK_UP_EVT ; 
 int /*<<< orphan*/  PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN ; 
 int PME_TO_ACK ; 
 int PME_TURN_OFF ; 
 int PM_PME ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct dra7xx_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dra7xx_pcie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie_ep*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *arg)
{
	struct dra7xx_pcie *dra7xx = arg;
	struct dw_pcie *pci = dra7xx->pci;
	struct device *dev = pci->dev;
	struct dw_pcie_ep *ep = &pci->ep;
	u32 reg;

	reg = FUNC1(dra7xx, PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN);

	if (reg & ERR_SYS)
		FUNC0(dev, "System Error\n");

	if (reg & ERR_FATAL)
		FUNC0(dev, "Fatal Error\n");

	if (reg & ERR_NONFATAL)
		FUNC0(dev, "Non Fatal Error\n");

	if (reg & ERR_COR)
		FUNC0(dev, "Correctable Error\n");

	if (reg & ERR_AXI)
		FUNC0(dev, "AXI tag lookup fatal Error\n");

	if (reg & ERR_ECRC)
		FUNC0(dev, "ECRC Error\n");

	if (reg & PME_TURN_OFF)
		FUNC0(dev,
			"Power Management Event Turn-Off message received\n");

	if (reg & PME_TO_ACK)
		FUNC0(dev,
			"Power Management Turn-Off Ack message received\n");

	if (reg & PM_PME)
		FUNC0(dev, "PM Power Management Event message received\n");

	if (reg & LINK_REQ_RST)
		FUNC0(dev, "Link Request Reset\n");

	if (reg & LINK_UP_EVT) {
		if (dra7xx->mode == DW_PCIE_EP_TYPE)
			FUNC3(ep);
		FUNC0(dev, "Link-up state change\n");
	}

	if (reg & CFG_BME_EVT)
		FUNC0(dev, "CFG 'Bus Master Enable' change\n");

	if (reg & CFG_MSE_EVT)
		FUNC0(dev, "CFG 'Memory Space Enable' change\n");

	FUNC2(dra7xx, PCIECTRL_DRA7XX_CONF_IRQSTATUS_MAIN, reg);

	return IRQ_HANDLED;
}