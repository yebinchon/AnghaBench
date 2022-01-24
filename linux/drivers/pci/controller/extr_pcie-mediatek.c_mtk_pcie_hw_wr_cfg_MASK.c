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
struct mtk_pcie_port {scalar_t__ base; } ;

/* Variables and functions */
 int APP_CFG_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CFG_WRRD_TYPE_0 ; 
 int /*<<< orphan*/  CFG_WR_FMT ; 
 scalar_t__ PCIE_APP_TLP_REQ ; 
 scalar_t__ PCIE_CFG_HEADER0 ; 
 scalar_t__ PCIE_CFG_HEADER1 ; 
 scalar_t__ PCIE_CFG_HEADER2 ; 
 scalar_t__ PCIE_CFG_WDATA ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct mtk_pcie_port*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct mtk_pcie_port *port, u32 bus, u32 devfn,
			      int where, int size, u32 val)
{
	/* Write PCIe configuration transaction header for Cfgwr */
	FUNC7(FUNC0(CFG_WRRD_TYPE_0, CFG_WR_FMT),
	       port->base + PCIE_CFG_HEADER0);
	FUNC7(FUNC1(where, size), port->base + PCIE_CFG_HEADER1);
	FUNC7(FUNC2(where, FUNC3(devfn), FUNC4(devfn), bus),
	       port->base + PCIE_CFG_HEADER2);

	/* Write Cfgwr data */
	val = val << 8 * (where & 3);
	FUNC7(val, port->base + PCIE_CFG_WDATA);

	/* Trigger h/w to transmit Cfgwr TLP */
	val = FUNC6(port->base + PCIE_APP_TLP_REQ);
	val |= APP_CFG_REQ;
	FUNC7(val, port->base + PCIE_APP_TLP_REQ);

	/* Check completion status */
	return FUNC5(port);
}