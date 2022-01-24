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
 int /*<<< orphan*/  XILINX_PCIE_REG_RPEFR ; 
 int /*<<< orphan*/  XILINX_PCIE_RPEFR_ALL_MASK ; 
 unsigned long XILINX_PCIE_RPEFR_ERR_VALID ; 
 unsigned long XILINX_PCIE_RPEFR_REQ_ID ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long) ; 
 unsigned long FUNC1 (struct xilinx_pcie_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_pcie_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xilinx_pcie_port *port)
{
	struct device *dev = port->dev;
	unsigned long val = FUNC1(port, XILINX_PCIE_REG_RPEFR);

	if (val & XILINX_PCIE_RPEFR_ERR_VALID) {
		FUNC0(dev, "Requester ID %lu\n",
			val & XILINX_PCIE_RPEFR_REQ_ID);
		FUNC2(port, XILINX_PCIE_RPEFR_ALL_MASK,
			   XILINX_PCIE_REG_RPEFR);
	}
}