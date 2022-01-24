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
struct ql_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;
struct pci_dev {int /*<<< orphan*/  error_state; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  QL_EEH_FATAL ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  ifup ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t FUNC8(struct pci_dev *pdev)
{
	struct net_device *ndev = FUNC3(pdev);
	struct ql_adapter *qdev = FUNC0(ndev);

	pdev->error_state = pci_channel_io_normal;

	FUNC4(pdev);
	if (FUNC2(pdev)) {
		FUNC1(qdev, ifup, qdev->ndev,
			  "Cannot re-enable PCI device after reset.\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	FUNC5(pdev);

	if (FUNC6(qdev)) {
		FUNC1(qdev, drv, qdev->ndev, "reset FAILED!\n");
		FUNC7(QL_EEH_FATAL, &qdev->flags);
		return PCI_ERS_RESULT_DISCONNECT;
	}

	return PCI_ERS_RESULT_RECOVERED;
}