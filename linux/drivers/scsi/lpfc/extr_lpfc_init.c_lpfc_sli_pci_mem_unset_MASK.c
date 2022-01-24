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
struct TYPE_3__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct lpfc_hba {int /*<<< orphan*/  slim_memmap_p; int /*<<< orphan*/  ctrl_regs_memmap_p; TYPE_1__ slim2p; TYPE_2__ hbqslimp; struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLI2_SLIM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	struct pci_dev *pdev;

	/* Obtain PCI device reference */
	if (!phba->pcidev)
		return;
	else
		pdev = phba->pcidev;

	/* Free coherent DMA memory allocated */
	FUNC0(&pdev->dev, FUNC2(),
			  phba->hbqslimp.virt, phba->hbqslimp.phys);
	FUNC0(&pdev->dev, SLI2_SLIM_SIZE,
			  phba->slim2p.virt, phba->slim2p.phys);

	/* I/O memory unmap */
	FUNC1(phba->ctrl_regs_memmap_p);
	FUNC1(phba->slim_memmap_p);

	return;
}