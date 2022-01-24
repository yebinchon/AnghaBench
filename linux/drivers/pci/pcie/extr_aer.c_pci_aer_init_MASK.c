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
struct pci_dev {int /*<<< orphan*/  aer_stats; scalar_t__ aer_cap; } ;
struct aer_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 

void FUNC3(struct pci_dev *dev)
{
	dev->aer_cap = FUNC2(dev, PCI_EXT_CAP_ID_ERR);

	if (dev->aer_cap)
		dev->aer_stats = FUNC0(sizeof(struct aer_stats), GFP_KERNEL);

	FUNC1(dev);
}