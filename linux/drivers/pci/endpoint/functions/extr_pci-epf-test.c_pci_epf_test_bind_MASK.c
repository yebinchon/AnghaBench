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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct pci_epf_test {int test_reg_bar; TYPE_1__ cmd_handler; struct pci_epc_features const* epc_features; } ;
struct pci_epf_header {int dummy; } ;
struct device {int dummy; } ;
struct pci_epf {int /*<<< orphan*/  msix_interrupts; int /*<<< orphan*/  func_no; int /*<<< orphan*/  msi_interrupts; struct device dev; struct pci_epc* epc; struct pci_epf_header* header; } ;
struct pci_epc_features {int linkup_notifier; int msix_capable; int msi_capable; } ;
struct pci_epc {int dummy; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_0 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pci_epf_test* FUNC2 (struct pci_epf*) ; 
 int /*<<< orphan*/  kpcitest_workqueue ; 
 struct pci_epc_features* FUNC3 (struct pci_epc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_epc_features const*) ; 
 int FUNC5 (struct pci_epc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_epc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_epc*,int /*<<< orphan*/ ,struct pci_epf_header*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_epf*,struct pci_epc_features const*) ; 
 int FUNC9 (struct pci_epf*) ; 
 int FUNC10 (struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct pci_epf *epf)
{
	int ret;
	struct pci_epf_test *epf_test = FUNC2(epf);
	struct pci_epf_header *header = epf->header;
	const struct pci_epc_features *epc_features;
	enum pci_barno test_reg_bar = BAR_0;
	struct pci_epc *epc = epf->epc;
	struct device *dev = &epf->dev;
	bool linkup_notifier = false;
	bool msix_capable = false;
	bool msi_capable = true;

	if (FUNC0(!epc))
		return -EINVAL;

	epc_features = FUNC3(epc, epf->func_no);
	if (epc_features) {
		linkup_notifier = epc_features->linkup_notifier;
		msix_capable = epc_features->msix_capable;
		msi_capable = epc_features->msi_capable;
		test_reg_bar = FUNC4(epc_features);
		FUNC8(epf, epc_features);
	}

	epf_test->test_reg_bar = test_reg_bar;
	epf_test->epc_features = epc_features;

	ret = FUNC7(epc, epf->func_no, header);
	if (ret) {
		FUNC1(dev, "Configuration header write failed\n");
		return ret;
	}

	ret = FUNC9(epf);
	if (ret)
		return ret;

	ret = FUNC10(epf);
	if (ret)
		return ret;

	if (msi_capable) {
		ret = FUNC5(epc, epf->func_no, epf->msi_interrupts);
		if (ret) {
			FUNC1(dev, "MSI configuration failed\n");
			return ret;
		}
	}

	if (msix_capable) {
		ret = FUNC6(epc, epf->func_no, epf->msix_interrupts);
		if (ret) {
			FUNC1(dev, "MSI-X configuration failed\n");
			return ret;
		}
	}

	if (!linkup_notifier)
		FUNC11(kpcitest_workqueue, &epf_test->cmd_handler.work);

	return 0;
}