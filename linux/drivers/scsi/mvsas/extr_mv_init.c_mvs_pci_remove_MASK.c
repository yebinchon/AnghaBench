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
struct sas_ha_struct {struct sas_ha_struct* sas_port; struct sas_ha_struct* sas_phy; scalar_t__ lldd_ha; } ;
struct pci_dev {int dummy; } ;
struct mvs_prv_info {unsigned short n_host; struct mvs_info** mvi; int /*<<< orphan*/  mv_tasklet; } ;
struct mvs_info {TYPE_1__* pdev; int /*<<< orphan*/  shost; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* interrupt_disable ) (struct mvs_info*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 TYPE_2__* MVS_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct sas_ha_struct* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvs_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	unsigned short core_nr, i = 0;
	struct sas_ha_struct *sha = FUNC4(pdev);
	struct mvs_info *mvi = NULL;

	core_nr = ((struct mvs_prv_info *)sha->lldd_ha)->n_host;
	mvi = ((struct mvs_prv_info *)sha->lldd_ha)->mvi[0];

#ifdef CONFIG_SCSI_MVSAS_TASKLET
	tasklet_kill(&((struct mvs_prv_info *)sha->lldd_ha)->mv_tasklet);
#endif

	FUNC7(sha);
	FUNC6(mvi->shost);

	MVS_CHIP_DISP->interrupt_disable(mvi);
	FUNC0(mvi->pdev->irq, sha);
	for (i = 0; i < core_nr; i++) {
		mvi = ((struct mvs_prv_info *)sha->lldd_ha)->mvi[i];
		FUNC2(mvi);
	}
	FUNC1(sha->sas_phy);
	FUNC1(sha->sas_port);
	FUNC1(sha);
	FUNC5(pdev);
	FUNC3(pdev);
	return;
}