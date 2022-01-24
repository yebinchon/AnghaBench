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
struct pci_epc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,char*) ; 
 int /*<<< orphan*/  devm_pci_epc_match ; 
 int /*<<< orphan*/  devm_pci_epc_release ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_epc*) ; 

void FUNC2(struct device *dev, struct pci_epc *epc)
{
	int r;

	r = FUNC1(dev, devm_pci_epc_release, devm_pci_epc_match,
			   epc);
	FUNC0(dev, r, "couldn't find PCI EPC resource\n");
}