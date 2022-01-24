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
 int PCI_NUM_RESOURCES ; 
 unsigned long FUNC0 (struct pci_dev*,int) ; 

int FUNC1(struct pci_dev *dev, unsigned long flags)
{
	int i, bars = 0;
	for (i = 0; i < PCI_NUM_RESOURCES; i++)
		if (FUNC0(dev, i) & flags)
			bars |= (1 << i);
	return bars;
}