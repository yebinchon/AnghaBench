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
struct resource {int /*<<< orphan*/  start; } ;
struct mtk_pcie_soc {int device_id; scalar_t__ need_fix_device_id; scalar_t__ need_fix_class_id; } ;
struct mtk_pcie_port {scalar_t__ base; int /*<<< orphan*/  slot; struct mtk_pcie* pcie; } ;
struct mtk_pcie {scalar_t__ base; struct mtk_pcie_soc* soc; struct resource mem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ETIMEDOUT ; 
 int INTX_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PCIE2AHB_SIZE ; 
 scalar_t__ PCIE_AHB_TRANS_BASE0_H ; 
 scalar_t__ PCIE_AHB_TRANS_BASE0_L ; 
 scalar_t__ PCIE_AXI_WINDOW0 ; 
 scalar_t__ PCIE_CONF_CLASS_ID ; 
 scalar_t__ PCIE_CONF_DEVICE_ID ; 
 scalar_t__ PCIE_CONF_VEND_ID ; 
 int PCIE_CRSTB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCIE_INT_MASK ; 
 int PCIE_LINKDOWN_RST_EN ; 
 scalar_t__ PCIE_LINK_STATUS_V2 ; 
 int PCIE_MAC_SRSTB ; 
 int PCIE_PERSTB ; 
 int PCIE_PHY_RSTB ; 
 int PCIE_PIPE_SRSTB ; 
 int PCIE_PORT_LINKUP_V2 ; 
 scalar_t__ PCIE_RST_CTRL ; 
 scalar_t__ PCIE_SYS_CFG_V2 ; 
 int PCI_CLASS_BRIDGE_PCI ; 
 int PCI_VENDOR_ID_MEDIATEK ; 
 int USEC_PER_MSEC ; 
 int WIN_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_pcie_port*) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct mtk_pcie_port *port)
{
	struct mtk_pcie *pcie = port->pcie;
	struct resource *mem = &pcie->mem;
	const struct mtk_pcie_soc *soc = port->pcie->soc;
	u32 val;
	int err;

	/* MT7622 platforms need to enable LTSSM and ASPM from PCIe subsys */
	if (pcie->base) {
		val = FUNC7(pcie->base + PCIE_SYS_CFG_V2);
		val |= FUNC3(port->slot) |
		       FUNC2(port->slot);
		FUNC11(val, pcie->base + PCIE_SYS_CFG_V2);
	}

	/* Assert all reset signals */
	FUNC11(0, port->base + PCIE_RST_CTRL);

	/*
	 * Enable PCIe link down reset, if link status changed from link up to
	 * link down, this will reset MAC control registers and configuration
	 * space.
	 */
	FUNC11(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);

	/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
	val = FUNC7(port->base + PCIE_RST_CTRL);
	val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
	       PCIE_MAC_SRSTB | PCIE_CRSTB;
	FUNC11(val, port->base + PCIE_RST_CTRL);

	/* Set up vendor ID and class code */
	if (soc->need_fix_class_id) {
		val = PCI_VENDOR_ID_MEDIATEK;
		FUNC12(val, port->base + PCIE_CONF_VEND_ID);

		val = PCI_CLASS_BRIDGE_PCI;
		FUNC12(val, port->base + PCIE_CONF_CLASS_ID);
	}

	if (soc->need_fix_device_id)
		FUNC12(soc->device_id, port->base + PCIE_CONF_DEVICE_ID);

	/* 100ms timeout value should be enough for Gen1/2 training */
	err = FUNC8(port->base + PCIE_LINK_STATUS_V2, val,
				 !!(val & PCIE_PORT_LINKUP_V2), 20,
				 100 * USEC_PER_MSEC);
	if (err)
		return -ETIMEDOUT;

	/* Set INTx mask */
	val = FUNC7(port->base + PCIE_INT_MASK);
	val &= ~INTX_MASK;
	FUNC11(val, port->base + PCIE_INT_MASK);

	if (FUNC1(CONFIG_PCI_MSI))
		FUNC6(port);

	/* Set AHB to PCIe translation windows */
	val = FUNC5(mem->start) |
	      FUNC0(FUNC4(FUNC9(mem)));
	FUNC11(val, port->base + PCIE_AHB_TRANS_BASE0_L);

	val = FUNC10(mem->start);
	FUNC11(val, port->base + PCIE_AHB_TRANS_BASE0_H);

	/* Set PCIe to AXI translation memory space.*/
	val = PCIE2AHB_SIZE | WIN_ENABLE;
	FUNC11(val, port->base + PCIE_AXI_WINDOW0);

	return 0;
}