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
struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_MBX_WAIT ; 
 int LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void
FUNC5(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC4(pdev);
	struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

	/*
	 * In case of slot reset, as function reset is performed through
	 * mailbox command which needs DMA to be enabled, this operation
	 * has to be moved to the io resume phase. Taking device offline
	 * will perform the necessary cleanup.
	 */
	if (!(phba->sli.sli_flag & LPFC_SLI_ACTIVE)) {
		/* Perform device reset */
		FUNC1(phba, LPFC_MBX_WAIT);
		FUNC0(phba);
		FUNC3(phba);
		/* Bring the device back online */
		FUNC2(phba);
	}
}