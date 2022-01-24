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
struct xilinx_pcie_port {scalar_t__ msi_pages; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_MSIBASE1 ; 
 int /*<<< orphan*/  XILINX_PCIE_REG_MSIBASE2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xilinx_pcie_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct xilinx_pcie_port *port)
{
	phys_addr_t msg_addr;

	port->msi_pages = FUNC0(GFP_KERNEL, 0);
	if (!port->msi_pages)
		return -ENOMEM;

	msg_addr = FUNC2((void *)port->msi_pages);
	FUNC1(port, 0x0, XILINX_PCIE_REG_MSIBASE1);
	FUNC1(port, msg_addr, XILINX_PCIE_REG_MSIBASE2);

	return 0;
}