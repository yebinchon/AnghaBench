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
struct comedi_device {int /*<<< orphan*/ * mmio; scalar_t__ irq; int /*<<< orphan*/  ioenabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 struct pci_dev* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct comedi_device *dev)
{
	struct pci_dev *pcidev = FUNC1(dev);

	if (!pcidev || !dev->ioenabled)
		return;

	if (dev->irq) {
		FUNC2(dev->irq, dev);
		dev->irq = 0;
	}
	if (dev->mmio) {
		FUNC3(dev->mmio);
		dev->mmio = NULL;
	}
	FUNC0(dev);
}