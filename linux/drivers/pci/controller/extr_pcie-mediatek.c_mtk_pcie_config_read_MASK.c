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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct mtk_pcie_port {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 struct mtk_pcie_port* FUNC0 (struct pci_bus*,unsigned int) ; 
 int FUNC1 (struct mtk_pcie_port*,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct pci_bus *bus, unsigned int devfn,
				int where, int size, u32 *val)
{
	struct mtk_pcie_port *port;
	u32 bn = bus->number;
	int ret;

	port = FUNC0(bus, devfn);
	if (!port) {
		*val = ~0;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	ret = FUNC1(port, bn, devfn, where, size, val);
	if (ret)
		*val = ~0;

	return ret;
}