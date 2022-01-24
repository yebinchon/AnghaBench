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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int FUNC0 (struct pci_bus*,unsigned int,int) ; 
 int FUNC1 (struct pci_bus*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*,unsigned int,int /*<<< orphan*/ ,int*) ; 

int FUNC3(struct pci_bus *bus, unsigned int devfn, int cap)
{
	int pos;
	u8 hdr_type;

	FUNC2(bus, devfn, PCI_HEADER_TYPE, &hdr_type);

	pos = FUNC0(bus, devfn, hdr_type & 0x7f);
	if (pos)
		pos = FUNC1(bus, devfn, pos, cap);

	return pos;
}