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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct AdapterControlBlock {int vector_count; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int ARCMST_NUM_MSIX_VECTORS ; 
 int FAILED ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_IRQ_LEGACY ; 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int SUCCESS ; 
 int /*<<< orphan*/  arcmsr_do_interrupt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct AdapterControlBlock*) ; 
 int msi_enable ; 
 scalar_t__ msix_enable ; 
 int FUNC2 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,char*,struct AdapterControlBlock*) ; 

__attribute__((used)) static int
FUNC8(struct pci_dev *pdev, struct AdapterControlBlock *acb)
{
	unsigned long flags;
	int nvec, i;

	if (msix_enable == 0)
		goto msi_int0;
	nvec = FUNC2(pdev, 1, ARCMST_NUM_MSIX_VECTORS,
			PCI_IRQ_MSIX);
	if (nvec > 0) {
		FUNC5("arcmsr%d: msi-x enabled\n", acb->host->host_no);
		flags = 0;
	} else {
msi_int0:
		if (msi_enable == 1) {
			nvec = FUNC2(pdev, 1, 1, PCI_IRQ_MSI);
			if (nvec == 1) {
				FUNC0(&pdev->dev, "msi enabled\n");
				goto msi_int1;
			}
		}
		nvec = FUNC2(pdev, 1, 1, PCI_IRQ_LEGACY);
		if (nvec < 1)
			return FAILED;
msi_int1:
		flags = IRQF_SHARED;
	}

	acb->vector_count = nvec;
	for (i = 0; i < nvec; i++) {
		if (FUNC7(FUNC4(pdev, i), arcmsr_do_interrupt,
				flags, "arcmsr", acb)) {
			FUNC6("arcmsr%d: request_irq =%d failed!\n",
				acb->host->host_no, FUNC4(pdev, i));
			goto out_free_irq;
		}
	}

	return SUCCESS;
out_free_irq:
	while (--i >= 0)
		FUNC1(FUNC4(pdev, i), acb);
	FUNC3(pdev);
	return FAILED;
}