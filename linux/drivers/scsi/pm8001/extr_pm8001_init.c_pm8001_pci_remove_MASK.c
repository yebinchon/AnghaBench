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
struct sas_ha_struct {struct sas_ha_struct* sas_port; struct sas_ha_struct* sas_phy; struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; scalar_t__ chip_id; int /*<<< orphan*/  shost; int /*<<< orphan*/ * tasklet; int /*<<< orphan*/  irq; struct sas_ha_struct* irq_vector; int /*<<< orphan*/  list; } ;
struct pci_dev {int /*<<< orphan*/  msix_cap; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_soft_rst ) (struct pm8001_hba_info*) ;int /*<<< orphan*/  (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;

/* Variables and functions */
 TYPE_1__* PM8001_CHIP_DISP ; 
 int PM8001_MAX_MSIX_VEC ; 
 scalar_t__ chip_8001 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct sas_ha_struct* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct pci_dev *pdev)
{
	struct sas_ha_struct *sha = FUNC5(pdev);
	struct pm8001_hba_info *pm8001_ha;
	int i, j;
	pm8001_ha = sha->lldd_ha;
	FUNC11(sha);
	FUNC10(pm8001_ha->shost);
	FUNC2(&pm8001_ha->list);
	PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
	PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);

#ifdef PM8001_USE_MSIX
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		synchronize_irq(pci_irq_vector(pdev, i));
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		free_irq(pci_irq_vector(pdev, i), &pm8001_ha->irq_vector[i]);
	pci_free_irq_vectors(pdev);
#else
	FUNC0(pm8001_ha->irq, sha);
#endif
#ifdef PM8001_USE_TASKLET
	/* For non-msix and msix interrupts */
	if ((!pdev->msix_cap || !pci_msi_enabled()) ||
	    (pm8001_ha->chip_id == chip_8001))
		tasklet_kill(&pm8001_ha->tasklet[0]);
	else
		for (j = 0; j < PM8001_MAX_MSIX_VEC; j++)
			tasklet_kill(&pm8001_ha->tasklet[j]);
#endif
	FUNC12(pm8001_ha->shost);
	FUNC9(pm8001_ha);
	FUNC1(sha->sas_phy);
	FUNC1(sha->sas_port);
	FUNC1(sha);
	FUNC8(pdev);
	FUNC3(pdev);
}