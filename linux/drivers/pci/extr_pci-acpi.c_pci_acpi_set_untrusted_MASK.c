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
typedef  scalar_t__ u8 ;
struct pci_dev {int untrusted; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	u8 val;

	if (FUNC1(dev) != PCI_EXP_TYPE_ROOT_PORT)
		return;
	if (FUNC0(&dev->dev, "ExternalFacingPort", &val))
		return;

	/*
	 * These root ports expose PCIe (including DMA) outside of the
	 * system so make sure we treat them and everything behind as
	 * untrusted.
	 */
	if (val)
		dev->untrusted = 1;
}