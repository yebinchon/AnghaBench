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
struct pci_epf_test {int test_reg_bar; int /*<<< orphan*/ * reg; struct pci_epc_features* epc_features; } ;
struct pci_epf_bar {int flags; } ;
struct device {int dummy; } ;
struct pci_epf {int /*<<< orphan*/  func_no; struct pci_epf_bar* bar; struct device dev; struct pci_epc* epc; } ;
struct pci_epc_features {int reserved_bar; } ;
struct pci_epc {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_0 ; 
 int BAR_5 ; 
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct pci_epf_test* FUNC1 (struct pci_epf*) ; 
 int FUNC2 (struct pci_epc*,int /*<<< orphan*/ ,struct pci_epf_bar*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pci_epf *epf)
{
	int bar, add;
	int ret;
	struct pci_epf_bar *epf_bar;
	struct pci_epc *epc = epf->epc;
	struct device *dev = &epf->dev;
	struct pci_epf_test *epf_test = FUNC1(epf);
	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
	const struct pci_epc_features *epc_features;

	epc_features = epf_test->epc_features;

	for (bar = BAR_0; bar <= BAR_5; bar += add) {
		epf_bar = &epf->bar[bar];
		/*
		 * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
		 * if the specific implementation required a 64-bit BAR,
		 * even if we only requested a 32-bit BAR.
		 */
		add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;

		if (!!(epc_features->reserved_bar & (1 << bar)))
			continue;

		ret = FUNC2(epc, epf->func_no, epf_bar);
		if (ret) {
			FUNC3(epf, epf_test->reg[bar], bar);
			FUNC0(dev, "Failed to set BAR%d\n", bar);
			if (bar == test_reg_bar)
				return ret;
		}
	}

	return 0;
}