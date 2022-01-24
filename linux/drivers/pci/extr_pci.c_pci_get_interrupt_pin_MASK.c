#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int pin; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct pci_dev*,int) ; 

int FUNC2(struct pci_dev *dev, struct pci_dev **bridge)
{
	u8 pin;

	pin = dev->pin;
	if (!pin)
		return -1;

	while (!FUNC0(dev->bus)) {
		pin = FUNC1(dev, pin);
		dev = dev->bus->self;
	}
	*bridge = dev;
	return pin;
}