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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pci_bus*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct pci_bus*,int,int*,int) ; 

bool FUNC3(struct pci_bus *bus, int devfn, u32 *l,
					int timeout)
{
	if (FUNC1(bus, devfn, PCI_VENDOR_ID, l))
		return false;

	/* Some broken boards return 0 or ~0 if a slot is empty: */
	if (*l == 0xffffffff || *l == 0x00000000 ||
	    *l == 0x0000ffff || *l == 0xffff0000)
		return false;

	if (FUNC0(*l))
		return FUNC2(bus, devfn, l, timeout);

	return true;
}