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
typedef  scalar_t__ uint32_t ;
struct pci_dev {scalar_t__ is_busmaster; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ intr_mode; int /*<<< orphan*/  worker_thread; int /*<<< orphan*/  brd_no; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 scalar_t__ LPFC_INTR_ERROR ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lpfc_hba*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_do_work ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC8(pdev);
	struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
	uint32_t intr_mode;
	int error;

	FUNC5(phba, KERN_INFO, LOG_INIT,
			"0292 PCI device Power Management resume.\n");

	/* Restore device state from PCI config space */
	FUNC12(pdev, PCI_D0);
	FUNC9(pdev);

	/*
	 * As the new kernel behavior of pci_restore_state() API call clears
	 * device saved_state flag, need to save the restored state again.
	 */
	FUNC10(pdev);

	if (pdev->is_busmaster)
		FUNC11(pdev);

	 /* Startup the kernel thread for this host adapter. */
	phba->worker_thread = FUNC2(lpfc_do_work, phba,
					"lpfc_worker_%d", phba->brd_no);
	if (FUNC0(phba->worker_thread)) {
		error = FUNC1(phba->worker_thread);
		FUNC5(phba, KERN_ERR, LOG_INIT,
				"0293 PM resume failed to start worker "
				"thread: error=x%x.\n", error);
		return error;
	}

	/* Configure and enable interrupt */
	intr_mode = FUNC6(phba, phba->intr_mode);
	if (intr_mode == LPFC_INTR_ERROR) {
		FUNC5(phba, KERN_ERR, LOG_INIT,
				"0294 PM resume Failed to enable interrupt\n");
		return -EIO;
	} else
		phba->intr_mode = intr_mode;

	/* Restart HBA and bring it online */
	FUNC7(phba);
	FUNC4(phba);

	/* Log the current active interrupt mode */
	FUNC3(phba, phba->intr_mode);

	return 0;
}