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
struct pci_epc_ops {int dummy; } ;
struct pci_epc {int dummy; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pci_epc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct pci_epc*) ; 
 struct pci_epc* FUNC2 (struct device*,struct pci_epc_ops const*,struct module*) ; 
 int /*<<< orphan*/  devm_pci_epc_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct pci_epc**) ; 
 struct pci_epc** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_epc**) ; 

struct pci_epc *
FUNC6(struct device *dev, const struct pci_epc_ops *ops,
		      struct module *owner)
{
	struct pci_epc **ptr, *epc;

	ptr = FUNC4(devm_pci_epc_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	epc = FUNC2(dev, ops, owner);
	if (!FUNC1(epc)) {
		*ptr = epc;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return epc;
}