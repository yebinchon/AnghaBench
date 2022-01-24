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
struct beiscsi_hba {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev)
{
	struct beiscsi_hba *phba = NULL;
	int status = 0;

	phba = (struct beiscsi_hba *)FUNC3(pdev);

	FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
		    "BM_%d : EEH Reset\n");

	status = FUNC2(pdev);
	if (status)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC5(pdev);
	FUNC6(pdev, PCI_D0);
	FUNC4(pdev);

	status = FUNC0(phba);
	if (status) {
		FUNC1(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BM_%d : EEH Reset Completed\n");
	} else {
		FUNC1(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BM_%d : EEH Reset Completion Failure\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	return PCI_ERS_RESULT_RECOVERED;
}