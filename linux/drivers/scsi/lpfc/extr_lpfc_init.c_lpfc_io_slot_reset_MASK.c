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
struct lpfc_hba {int pci_dev_grp; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
#define  LPFC_PCI_DEV_LP 129 
#define  LPFC_PCI_DEV_OC 128 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct Scsi_Host* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC4(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC3(pdev);
	struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
	pci_ers_result_t rc = PCI_ERS_RESULT_DISCONNECT;

	switch (phba->pci_dev_grp) {
	case LPFC_PCI_DEV_LP:
		rc = FUNC0(pdev);
		break;
	case LPFC_PCI_DEV_OC:
		rc = FUNC1(pdev);
		break;
	default:
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"1428 Invalid PCI device group: 0x%x\n",
				phba->pci_dev_grp);
		break;
	}
	return rc;
}