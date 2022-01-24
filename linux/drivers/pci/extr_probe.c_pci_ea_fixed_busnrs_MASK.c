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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {scalar_t__ hdr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EA ; 
 int PCI_EA_FIRST_ENT ; 
 int PCI_EA_SEC_BUS_MASK ; 
 int PCI_EA_SUB_BUS_MASK ; 
 int PCI_EA_SUB_BUS_SHIFT ; 
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static bool FUNC2(struct pci_dev *dev, u8 *sec, u8 *sub)
{
	int ea, offset;
	u32 dw;

	if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE)
		return false;

	/* find PCI EA capability in list */
	ea = FUNC0(dev, PCI_CAP_ID_EA);
	if (!ea)
		return false;

	offset = ea + PCI_EA_FIRST_ENT;
	FUNC1(dev, offset, &dw);
	*sec =  dw & PCI_EA_SEC_BUS_MASK;
	*sub = (dw & PCI_EA_SUB_BUS_MASK) >> PCI_EA_SUB_BUS_SHIFT;
	return true;
}