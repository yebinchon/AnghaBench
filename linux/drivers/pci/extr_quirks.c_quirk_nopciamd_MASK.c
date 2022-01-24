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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIAGP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  pci_pci_problems ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u8 rev;
	FUNC1(dev, 0x08, &rev);
	if (rev == 0x13) {
		/* Erratum 24 */
		FUNC0(dev, "Chipset erratum: Disabling direct PCI/AGP transfers\n");
		pci_pci_problems |= PCIAGP_FAIL;
	}
}