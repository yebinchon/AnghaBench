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
struct pci_dev {int class; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CLASS_PROG ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	u8 prog;
	FUNC0(pdev, PCI_CLASS_PROG, &prog);
	if (prog & 5) {
		prog &= ~5;
		pdev->class &= ~5;
		FUNC1(pdev, PCI_CLASS_PROG, prog);
		/* PCI layer will sort out resources */
	}
}