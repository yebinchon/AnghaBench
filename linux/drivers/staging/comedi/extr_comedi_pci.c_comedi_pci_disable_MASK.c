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
struct comedi_device {int ioenabled; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

void FUNC3(struct comedi_device *dev)
{
	struct pci_dev *pcidev = FUNC0(dev);

	if (pcidev && dev->ioenabled) {
		FUNC2(pcidev);
		FUNC1(pcidev);
	}
	dev->ioenabled = false;
}