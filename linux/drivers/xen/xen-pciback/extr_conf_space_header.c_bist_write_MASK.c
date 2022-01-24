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
 int PCI_BIST_START ; 
 int FUNC0 (struct pci_dev*,int,int*) ; 
 int FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev, int offset, u8 value, void *data)
{
	u8 cur_value;
	int err;

	err = FUNC0(dev, offset, &cur_value);
	if (err)
		goto out;

	if ((cur_value & ~PCI_BIST_START) == (value & ~PCI_BIST_START)
	    || value == PCI_BIST_START)
		err = FUNC1(dev, offset, value);

out:
	return err;
}