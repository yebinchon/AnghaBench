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
struct pci_dev {int /*<<< orphan*/  irq; scalar_t__ msix_enabled; } ;
struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {struct beiscsi_hba* be_eq; } ;
struct beiscsi_hba {int num_cpus; char** msi_name; TYPE_1__* shost; struct hwi_controller* phwi_ctrlr; struct pci_dev* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  be_isr ; 
 int /*<<< orphan*/  be_isr_mcc ; 
 int /*<<< orphan*/  be_isr_msix ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct beiscsi_hba*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct beiscsi_hba*) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_hba *phba)
{
	struct pci_dev *pcidev = phba->pcidev;
	struct hwi_controller *phwi_ctrlr;
	struct hwi_context_memory *phwi_context;
	int ret, i, j;

	phwi_ctrlr = phba->phwi_ctrlr;
	phwi_context = phwi_ctrlr->phwi_ctxt;

	if (pcidev->msix_enabled) {
		for (i = 0; i < phba->num_cpus; i++) {
			phba->msi_name[i] = FUNC2(GFP_KERNEL,
						      "beiscsi_%02x_%02x",
						      phba->shost->host_no, i);
			if (!phba->msi_name[i]) {
				ret = -ENOMEM;
				goto free_msix_irqs;
			}

			ret = FUNC5(FUNC4(pcidev, i),
					  be_isr_msix, 0, phba->msi_name[i],
					  &phwi_context->be_eq[i]);
			if (ret) {
				FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT,
					    "BM_%d : beiscsi_init_irqs-Failed to"
					    "register msix for i = %d\n",
					    i);
				FUNC3(phba->msi_name[i]);
				goto free_msix_irqs;
			}
		}
		phba->msi_name[i] = FUNC2(GFP_KERNEL, "beiscsi_mcc_%02x",
					      phba->shost->host_no);
		if (!phba->msi_name[i]) {
			ret = -ENOMEM;
			goto free_msix_irqs;
		}
		ret = FUNC5(FUNC4(pcidev, i), be_isr_mcc, 0,
				  phba->msi_name[i], &phwi_context->be_eq[i]);
		if (ret) {
			FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT ,
				    "BM_%d : beiscsi_init_irqs-"
				    "Failed to register beiscsi_msix_mcc\n");
			FUNC3(phba->msi_name[i]);
			goto free_msix_irqs;
		}

	} else {
		ret = FUNC5(pcidev->irq, be_isr, IRQF_SHARED,
				  "beiscsi", phba);
		if (ret) {
			FUNC0(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : beiscsi_init_irqs-"
				    "Failed to register irq\\n");
			return ret;
		}
	}
	return 0;
free_msix_irqs:
	for (j = i - 1; j >= 0; j--) {
		FUNC1(FUNC4(pcidev, i), &phwi_context->be_eq[j]);
		FUNC3(phba->msi_name[j]);
	}
	return ret;
}