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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int PCI_ROM_RESOURCE ; 
 int FUNC0 (struct pci_dev*,int) ; 
 unsigned long FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	unsigned long base = 0;
	int i;

	if (!FUNC2(pdev))
		return;

	for (i = 0; i < PCI_ROM_RESOURCE; i++)
		if ((FUNC0(pdev, i) & IORESOURCE_IO)) {
			base = FUNC1(pdev, i);
			break;
		}

	if (base)
		FUNC3(pdev, base);
}