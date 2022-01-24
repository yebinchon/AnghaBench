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
struct xilinx_pcie_port {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int XILINX_PCIE_IDR_ALL_MASK ; 
 int XILINX_PCIE_IMR_ALL_MASK ; 
 int XILINX_PCIE_IMR_ENABLE_MASK ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_IDR ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_IMR ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_RPSC ; 
 int XILINX_PCIE_REG_RPSC_BEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct xilinx_pcie_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_pcie_port*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xilinx_pcie_port*) ; 

__attribute__((used)) static void FUNC4(struct xilinx_pcie_port *port)
{
	struct device *dev = port->dev;

	if (FUNC3(port))
		FUNC0(dev, "PCIe Link is UP\n");
	else
		FUNC0(dev, "PCIe Link is DOWN\n");

	/* Disable all interrupts */
	FUNC2(port, ~XILINX_PCIE_IDR_ALL_MASK,
		   XILINX_PCIE_REG_IMR);

	/* Clear pending interrupts */
	FUNC2(port, FUNC1(port, XILINX_PCIE_REG_IDR) &
			 XILINX_PCIE_IMR_ALL_MASK,
		   XILINX_PCIE_REG_IDR);

	/* Enable all interrupts we handle */
	FUNC2(port, XILINX_PCIE_IMR_ENABLE_MASK, XILINX_PCIE_REG_IMR);

	/* Enable the Bridge enable bit */
	FUNC2(port, FUNC1(port, XILINX_PCIE_REG_RPSC) |
			 XILINX_PCIE_REG_RPSC_BEN,
		   XILINX_PCIE_REG_RPSC);
}