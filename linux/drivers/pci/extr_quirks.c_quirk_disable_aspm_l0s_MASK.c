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
 int /*<<< orphan*/  PCIE_LINK_STATE_L0S ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	FUNC1(dev, "Disabling L0s\n");
	FUNC0(dev, PCIE_LINK_STATE_L0S);
}