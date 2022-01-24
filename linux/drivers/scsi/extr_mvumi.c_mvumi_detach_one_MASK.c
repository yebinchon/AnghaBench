#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mvumi_hba {TYPE_2__* pdev; TYPE_1__* instancet; struct Scsi_Host* shost; int /*<<< orphan*/ * dm_thread; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disable_intr ) (struct mvumi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct mvumi_hba* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (struct mvumi_hba*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct Scsi_Host *host;
	struct mvumi_hba *mhba;

	mhba = FUNC7(pdev);
	if (mhba->dm_thread) {
		FUNC2(mhba->dm_thread);
		mhba->dm_thread = NULL;
	}

	FUNC3(mhba);
	host = mhba->shost;
	FUNC9(mhba->shost);
	FUNC4(mhba);

	mhba->instancet->disable_intr(mhba);
	FUNC1(mhba->pdev->irq, mhba);
	FUNC5(mhba);
	FUNC8(host);
	FUNC6(pdev);
	FUNC0(&pdev->dev, "driver is removed!\n");
}