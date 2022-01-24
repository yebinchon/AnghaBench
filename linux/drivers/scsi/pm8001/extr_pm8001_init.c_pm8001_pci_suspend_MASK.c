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
typedef  int /*<<< orphan*/  u32 ;
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int number_of_intr; scalar_t__ chip_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * tasklet; int /*<<< orphan*/  irq; struct sas_ha_struct* irq_vector; int /*<<< orphan*/  shost; } ;
struct pci_dev {int /*<<< orphan*/  msix_cap; int /*<<< orphan*/  dev; int /*<<< orphan*/  pm_cap; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* chip_soft_rst ) (struct pm8001_hba_info*) ;int /*<<< orphan*/  (* interrupt_disable ) (struct pm8001_hba_info*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 int PM8001_MAX_MSIX_VEC ; 
 scalar_t__ chip_8001 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct sas_ha_struct* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm8001_wq ; 
 int /*<<< orphan*/  FUNC12 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pm8001_hba_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, pm_message_t state)
{
	struct sas_ha_struct *sha = FUNC6(pdev);
	struct pm8001_hba_info *pm8001_ha;
	int  i, j;
	u32 device_state;
	pm8001_ha = sha->lldd_ha;
	FUNC12(sha);
	FUNC1(pm8001_wq);
	FUNC13(pm8001_ha->shost);
	if (!pdev->pm_cap) {
		FUNC0(&pdev->dev, " PCI PM not supported\n");
		return -ENODEV;
	}
	PM8001_CHIP_DISP->interrupt_disable(pm8001_ha, 0xFF);
	PM8001_CHIP_DISP->chip_soft_rst(pm8001_ha);
#ifdef PM8001_USE_MSIX
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		synchronize_irq(pci_irq_vector(pdev, i));
	for (i = 0; i < pm8001_ha->number_of_intr; i++)
		free_irq(pci_irq_vector(pdev, i), &pm8001_ha->irq_vector[i]);
	pci_free_irq_vectors(pdev);
#else
	FUNC2(pm8001_ha->irq, sha);
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
	device_state = FUNC3(pdev, state);
	FUNC11("pdev=0x%p, slot=%s, entering "
		      "operating state [D%d]\n", pdev,
		      pm8001_ha->name, device_state);
	FUNC9(pdev);
	FUNC4(pdev);
	FUNC10(pdev, device_state);
	return 0;
}