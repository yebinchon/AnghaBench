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
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				  struct pci_dev *pcidev)
{
	unsigned char pci_latency;

	FUNC1(pcidev, PCI_LATENCY_TIMER, &pci_latency);
	if (pci_latency < 32) {
		FUNC0(dev->class_dev,
			 "PCI latency changed from %d to %d\n",
			 pci_latency, 32);
		FUNC2(pcidev, PCI_LATENCY_TIMER, 32);
	}
}