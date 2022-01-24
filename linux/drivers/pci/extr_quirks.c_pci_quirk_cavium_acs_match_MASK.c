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
struct pci_dev {int device; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC2(struct pci_dev *dev)
{
	/*
	 * Effectively selects all downstream ports for whole ThunderX 1
	 * family by 0xf800 mask (which represents 8 SoCs), while the lower
	 * bits of device ID are used to indicate which subdevice is used
	 * within the SoC.
	 */
	return (FUNC0(dev) &&
		(FUNC1(dev) == PCI_EXP_TYPE_ROOT_PORT) &&
		((dev->device & 0xf800) == 0xa000));
}