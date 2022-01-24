#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;
struct TYPE_7__ {TYPE_2__ mbox_mem_alloced; } ;
struct TYPE_5__ {int /*<<< orphan*/  boot_kset; } ;
struct beiscsi_hba {int /*<<< orphan*/  shost; TYPE_4__* pcidev; TYPE_3__ ctrl; int /*<<< orphan*/  wq; TYPE_1__ boot_struct; int /*<<< orphan*/  sess_work; int /*<<< orphan*/  recover_port; int /*<<< orphan*/  hw_check; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 struct beiscsi_hba* FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct pci_dev *pcidev)
{
	struct beiscsi_hba *phba = NULL;

	phba = FUNC16(pcidev);
	if (!phba) {
		FUNC8(&pcidev->dev, "beiscsi_remove called with no phba\n");
		return;
	}

	/* first stop UE detection before unloading */
	FUNC6(&phba->hw_check);
	FUNC4(&phba->recover_port);
	FUNC5(&phba->sess_work);

	FUNC2(phba);
	FUNC12(phba->shost);
	FUNC0(phba, 1);

	/* after cancelling boot_work */
	FUNC10(phba->boot_struct.boot_kset);

	/* free all resources */
	FUNC7(phba->wq);
	FUNC1(phba);

	/* ctrl uninit */
	FUNC3(phba);
	FUNC9(&phba->pcidev->dev,
			    phba->ctrl.mbox_mem_alloced.size,
			    phba->ctrl.mbox_mem_alloced.va,
			    phba->ctrl.mbox_mem_alloced.dma);

	FUNC13(phba->pcidev);
	FUNC11(phba->shost);
	FUNC15(pcidev);
	FUNC18(pcidev, NULL);
	FUNC17(pcidev);
	FUNC14(pcidev);
}