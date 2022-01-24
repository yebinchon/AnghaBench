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
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
#define  pci_channel_io_frozen 130 
#define  pci_channel_io_normal 129 
#define  pci_channel_io_perm_failure 128 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC5(struct pci_dev *pdev, pci_channel_state_t state)
{
	struct Scsi_Host *shost = FUNC4(pdev);
	struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

	switch (state) {
	case pci_channel_io_normal:
		/* Non-fatal error, prepare for recovery */
		FUNC2(phba);
		return PCI_ERS_RESULT_CAN_RECOVER;
	case pci_channel_io_frozen:
		/* Fatal error, prepare for slot reset */
		FUNC3(phba);
		return PCI_ERS_RESULT_NEED_RESET;
	case pci_channel_io_perm_failure:
		/* Permanent failure, prepare for device down */
		FUNC1(phba);
		return PCI_ERS_RESULT_DISCONNECT;
	default:
		/* Unknown state, prepare and request slot reset */
		FUNC0(phba, KERN_ERR, LOG_INIT,
				"0472 Unknown PCI error state: x%x\n", state);
		FUNC3(phba);
		return PCI_ERS_RESULT_NEED_RESET;
	}
}