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
 int PCIE_CLIENT_INT_CORR_ERR ; 
 int PCIE_CLIENT_INT_DPA ; 
 int PCIE_CLIENT_INT_FATAL_ERR ; 
 int PCIE_CLIENT_INT_HOT_RST ; 
 int PCIE_CLIENT_INT_LEGACY_DONE ; 
 int PCIE_CLIENT_INT_MSG ; 
 int PCIE_CLIENT_INT_NFATAL_ERR ; 
 int PCIE_CLIENT_INT_PHY ; 
 int /*<<< orphan*/  PCIE_CLIENT_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct rockchip_pcie *rockchip = arg;
	struct device *dev = rockchip->dev;
	u32 reg;

	reg = FUNC1(rockchip, PCIE_CLIENT_INT_STATUS);
	if (reg & PCIE_CLIENT_INT_LEGACY_DONE)
		FUNC0(dev, "legacy done interrupt received\n");

	if (reg & PCIE_CLIENT_INT_MSG)
		FUNC0(dev, "message done interrupt received\n");

	if (reg & PCIE_CLIENT_INT_HOT_RST)
		FUNC0(dev, "hot reset interrupt received\n");

	if (reg & PCIE_CLIENT_INT_DPA)
		FUNC0(dev, "dpa interrupt received\n");

	if (reg & PCIE_CLIENT_INT_FATAL_ERR)
		FUNC0(dev, "fatal error interrupt received\n");

	if (reg & PCIE_CLIENT_INT_NFATAL_ERR)
		FUNC0(dev, "no fatal error interrupt received\n");

	if (reg & PCIE_CLIENT_INT_CORR_ERR)
		FUNC0(dev, "correctable error interrupt received\n");

	if (reg & PCIE_CLIENT_INT_PHY)
		FUNC0(dev, "phy interrupt received\n");

	FUNC2(rockchip, reg & (PCIE_CLIENT_INT_LEGACY_DONE |
			      PCIE_CLIENT_INT_MSG | PCIE_CLIENT_INT_HOT_RST |
			      PCIE_CLIENT_INT_DPA | PCIE_CLIENT_INT_FATAL_ERR |
			      PCIE_CLIENT_INT_NFATAL_ERR |
			      PCIE_CLIENT_INT_CORR_ERR |
			      PCIE_CLIENT_INT_PHY),
		   PCIE_CLIENT_INT_STATUS);

	return IRQ_HANDLED;
}