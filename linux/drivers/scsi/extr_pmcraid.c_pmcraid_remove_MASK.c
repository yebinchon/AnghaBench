#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pmcraid_instance {int /*<<< orphan*/  host; int /*<<< orphan*/  mapped_dma_addr; int /*<<< orphan*/  worker_q; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pmcraid_instance* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct pmcraid_instance *pinstance = FUNC3(pdev);

	/* remove the management interface (/dev file) for this device */
	FUNC8(pinstance);

	/* remove host template from scsi midlayer */
	FUNC13(pinstance->host);

	/* block requests from mid-layer */
	FUNC11(pinstance->host);

	/* initiate shutdown adapter */
	FUNC9(pdev);

	FUNC5(pinstance, ~0);
	FUNC0(&pinstance->worker_q);

	FUNC6(pinstance);
	FUNC10(pinstance);
	FUNC7(pinstance);
	FUNC1(pinstance->mapped_dma_addr);
	FUNC4(pdev);
	FUNC12(pinstance->host);
	FUNC2(pdev);

	return;
}