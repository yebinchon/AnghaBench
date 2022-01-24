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
struct pci_dev {scalar_t__ devfn; } ;
struct beiscsi_hba {int /*<<< orphan*/  shost; int /*<<< orphan*/  recover_port; int /*<<< orphan*/  hw_check; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_PCI_ERR ; 
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  beiscsi_session_fail ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static pci_ers_result_t FUNC9(struct pci_dev *pdev,
		pci_channel_state_t state)
{
	struct beiscsi_hba *phba = NULL;

	phba = (struct beiscsi_hba *)FUNC6(pdev);
	FUNC7(BEISCSI_HBA_PCI_ERR, &phba->state);

	FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
		    "BM_%d : EEH error detected\n");

	/* first stop UE detection when PCI error detected */
	FUNC3(&phba->hw_check);
	FUNC2(&phba->recover_port);

	/* sessions are no longer valid, so first fail the sessions */
	FUNC4(phba->shost, beiscsi_session_fail);
	FUNC0(phba, 0);

	if (state == pci_channel_io_perm_failure) {
		FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
			    "BM_%d : EEH : State PERM Failure");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC5(pdev);

	/* The error could cause the FW to trigger a flash debug dump.
	 * Resetting the card while flash dump is in progress
	 * can cause it not to recover; wait for it to finish.
	 * Wait only for first function as it is needed only once per
	 * adapter.
	 **/
	if (pdev->devfn == 0)
		FUNC8(30);

	return PCI_ERS_RESULT_NEED_RESET;
}