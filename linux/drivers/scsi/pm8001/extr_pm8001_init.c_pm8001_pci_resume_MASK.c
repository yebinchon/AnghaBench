#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {scalar_t__ chip_id; size_t number_of_intr; int /*<<< orphan*/  shost; TYPE_2__* phy; TYPE_1__* chip; int /*<<< orphan*/  flags; int /*<<< orphan*/ * irq_vector; int /*<<< orphan*/ * tasklet; int /*<<< orphan*/  name; } ;
struct pci_dev {int /*<<< orphan*/  msix_cap; int /*<<< orphan*/  current_state; } ;
struct TYPE_6__ {int (* chip_init ) (struct pm8001_hba_info*) ;int /*<<< orphan*/  (* phy_start_req ) (struct pm8001_hba_info*,size_t) ;int /*<<< orphan*/  (* interrupt_enable ) (struct pm8001_hba_info*,size_t) ;int /*<<< orphan*/  (* interrupt_disable ) (struct pm8001_hba_info*,int) ;int /*<<< orphan*/  (* chip_soft_rst ) (struct pm8001_hba_info*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * enable_completion; } ;
struct TYPE_4__ {size_t n_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PM8001F_RUN_TIME ; 
 TYPE_3__* PM8001_CHIP_DISP ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 size_t PM8001_MAX_MSIX_VEC ; 
 scalar_t__ chip_8001 ; 
 scalar_t__ chip_8070 ; 
 scalar_t__ chip_8072 ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sas_ha_struct* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  pm8001_tasklet ; 
 int /*<<< orphan*/  FUNC14 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pm8001_hba_info*) ; 
 int FUNC18 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC22 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC6(pdev);
	struct pm8001_hba_info *pm8001_ha;
	int rc;
	u8 i = 0, j;
	u32 device_state;
	FUNC0(completion);
	pm8001_ha = sha->lldd_ha;
	device_state = pdev->current_state;

	FUNC12("pdev=0x%p, slot=%s, resuming from previous "
		"operating state [D%d]\n", pdev, pm8001_ha->name, device_state);

	FUNC11(pdev, PCI_D0);
	FUNC5(pdev, PCI_D0, 0);
	FUNC9(pdev);
	rc = FUNC4(pdev);
	if (rc) {
		FUNC12("slot=%s Enable device failed during resume\n",
			      pm8001_ha->name);
		goto err_out_enable;
	}

	FUNC10(pdev);
	rc = FUNC7(pdev);
	if (rc)
		goto err_out_disable;
	FUNC14(sha);
	/* chip soft rst only for spc */
	if (pm8001_ha->chip_id == chip_8001) {
		PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
		FUNC1(pm8001_ha,
			FUNC12("chip soft reset successful\n"));
	}
	rc = PM8001_CHIP_DISP->chip_init(pm8001_ha);
	if (rc)
		goto err_out_disable;

	/* disable all the interrupt bits */
	PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);

	rc = FUNC13(pm8001_ha);
	if (rc)
		goto err_out_disable;
#ifdef PM8001_USE_TASKLET
	/*  Tasklet for non msi-x interrupt handler */
	if ((!pdev->msix_cap || !pci_msi_enabled()) ||
	    (pm8001_ha->chip_id == chip_8001))
		tasklet_init(&pm8001_ha->tasklet[0], pm8001_tasklet,
			(unsigned long)&(pm8001_ha->irq_vector[0]));
	else
		for (j = 0; j < PM8001_MAX_MSIX_VEC; j++)
			tasklet_init(&pm8001_ha->tasklet[j], pm8001_tasklet,
				(unsigned long)&(pm8001_ha->irq_vector[j]));
#endif
	PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, 0);
	if (pm8001_ha->chip_id != chip_8001) {
		for (i = 1; i < pm8001_ha->number_of_intr; i++)
			PM8001_CHIP_DISP->interrupt_enable(pm8001_ha, i);
	}

	/* Chip documentation for the 8070 and 8072 SPCv    */
	/* states that a 500ms minimum delay is required    */
	/* before issuing commands. Otherwise, the firmware */
	/* will enter an unrecoverable state.               */

	if (pm8001_ha->chip_id == chip_8070 ||
		pm8001_ha->chip_id == chip_8072) {
		FUNC2(500);
	}

	/* Spin up the PHYs */

	pm8001_ha->flags = PM8001F_RUN_TIME;
	for (i = 0; i < pm8001_ha->chip->n_phy; i++) {
		pm8001_ha->phy[i].enable_completion = &completion;
		PM8001_CHIP_DISP->phy_start_req(pm8001_ha, i);
		FUNC24(&completion);
	}
	FUNC15(sha);
	return 0;

err_out_disable:
	FUNC16(pm8001_ha->shost);
	FUNC3(pdev);
err_out_enable:
	return rc;
}