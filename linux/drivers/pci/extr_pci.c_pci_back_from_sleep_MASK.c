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
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC2(struct pci_dev *dev)
{
	FUNC0(dev, PCI_D0, false);
	return FUNC1(dev, PCI_D0);
}