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
struct dw_pcie {int version; int iatu_unroll_enabled; struct device* dev; scalar_t__ dbi_base; scalar_t__ atu_base; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_DBI_ATU_OFFSET ; 
 int /*<<< orphan*/  PCIE_LINK_WIDTH_SPEED_CONTROL ; 
 int PCIE_PL_CHK_REG_CHK_REG_CONTINUOUS ; 
 int PCIE_PL_CHK_REG_CHK_REG_START ; 
 int /*<<< orphan*/  PCIE_PL_CHK_REG_CONTROL_STATUS ; 
 int /*<<< orphan*/  PCIE_PORT_LINK_CONTROL ; 
 int PORT_LINK_MODE_1_LANES ; 
 int PORT_LINK_MODE_2_LANES ; 
 int PORT_LINK_MODE_4_LANES ; 
 int PORT_LINK_MODE_8_LANES ; 
 int PORT_LINK_MODE_MASK ; 
 int PORT_LOGIC_LINK_WIDTH_1_LANES ; 
 int PORT_LOGIC_LINK_WIDTH_2_LANES ; 
 int PORT_LOGIC_LINK_WIDTH_4_LANES ; 
 int PORT_LOGIC_LINK_WIDTH_8_LANES ; 
 int PORT_LOGIC_LINK_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 scalar_t__ FUNC2 (struct dw_pcie*) ; 
 int FUNC3 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_pcie*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 int FUNC6 (struct device_node*,char*,int*) ; 

void FUNC7(struct dw_pcie *pci)
{
	int ret;
	u32 val;
	u32 lanes;
	struct device *dev = pci->dev;
	struct device_node *np = dev->of_node;

	if (pci->version >= 0x480A || (!pci->version &&
				       FUNC2(pci))) {
		pci->iatu_unroll_enabled = true;
		if (!pci->atu_base)
			pci->atu_base = pci->dbi_base + DEFAULT_DBI_ATU_OFFSET;
	}
	FUNC0(pci->dev, "iATU unroll: %s\n", pci->iatu_unroll_enabled ?
		"enabled" : "disabled");


	ret = FUNC6(np, "num-lanes", &lanes);
	if (ret) {
		FUNC0(pci->dev, "property num-lanes isn't found\n");
		return;
	}

	/* Set the number of lanes */
	val = FUNC3(pci, PCIE_PORT_LINK_CONTROL);
	val &= ~PORT_LINK_MODE_MASK;
	switch (lanes) {
	case 1:
		val |= PORT_LINK_MODE_1_LANES;
		break;
	case 2:
		val |= PORT_LINK_MODE_2_LANES;
		break;
	case 4:
		val |= PORT_LINK_MODE_4_LANES;
		break;
	case 8:
		val |= PORT_LINK_MODE_8_LANES;
		break;
	default:
		FUNC1(pci->dev, "num-lanes %u: invalid value\n", lanes);
		return;
	}
	FUNC4(pci, PCIE_PORT_LINK_CONTROL, val);

	/* Set link width speed control register */
	val = FUNC3(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
	val &= ~PORT_LOGIC_LINK_WIDTH_MASK;
	switch (lanes) {
	case 1:
		val |= PORT_LOGIC_LINK_WIDTH_1_LANES;
		break;
	case 2:
		val |= PORT_LOGIC_LINK_WIDTH_2_LANES;
		break;
	case 4:
		val |= PORT_LOGIC_LINK_WIDTH_4_LANES;
		break;
	case 8:
		val |= PORT_LOGIC_LINK_WIDTH_8_LANES;
		break;
	}
	FUNC4(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);

	if (FUNC5(np, "snps,enable-cdm-check")) {
		val = FUNC3(pci, PCIE_PL_CHK_REG_CONTROL_STATUS);
		val |= PCIE_PL_CHK_REG_CHK_REG_CONTINUOUS |
		       PCIE_PL_CHK_REG_CHK_REG_START;
		FUNC4(pci, PCIE_PL_CHK_REG_CONTROL_STATUS, val);
	}
}