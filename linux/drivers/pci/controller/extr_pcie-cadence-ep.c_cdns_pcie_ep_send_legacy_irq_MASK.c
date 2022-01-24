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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct cdns_pcie_ep {int /*<<< orphan*/  pcie; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct cdns_pcie_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct cdns_pcie_ep *ep, u8 fn, u8 intx)
{
	u16 cmd;

	cmd = FUNC1(&ep->pcie, fn, PCI_COMMAND);
	if (cmd & PCI_COMMAND_INTX_DISABLE)
		return -EINVAL;

	FUNC0(ep, fn, intx, true);
	/*
	 * The mdelay() value was taken from dra7xx_pcie_raise_legacy_irq()
	 * from drivers/pci/dwc/pci-dra7xx.c
	 */
	FUNC2(1);
	FUNC0(ep, fn, intx, false);
	return 0;
}