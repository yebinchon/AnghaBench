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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct bfad_s {int bfad_flags; int /*<<< orphan*/  comp; int /*<<< orphan*/  pci_name; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; int /*<<< orphan*/  hal_pcidev; int /*<<< orphan*/  meminfo; int /*<<< orphan*/  ioc_cfg; struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFAD_E_INIT_FAILED ; 
 int BFAD_MSIX_ON ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfad_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfad_s*) ; 
 scalar_t__ FUNC5 (struct bfad_s*) ; 
 scalar_t__ FUNC6 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct bfad_s *bfad)
{
	unsigned long flags;
	struct pci_dev *pdev = bfad->pcidev;

	FUNC0(&bfad->bfa, bfad, &bfad->ioc_cfg,
		   &bfad->meminfo, &bfad->hal_pcidev);

	/* Enable Interrupt and wait bfa_init completion */
	if (FUNC6(bfad)) {
		FUNC7(KERN_WARNING, &pdev->dev,
			   "%s: bfad_setup_intr failed\n", bfad->pci_name);
		FUNC2(bfad, BFAD_E_INIT_FAILED);
		return -1;
	}

	FUNC8(&bfad->comp);
	FUNC9(&bfad->bfad_lock, flags);
	FUNC1(&bfad->bfa);
	FUNC10(&bfad->bfad_lock, flags);

	/* Set up interrupt handler for each vectors */
	if ((bfad->bfad_flags & BFAD_MSIX_ON) &&
	    FUNC5(bfad))
		FUNC7(KERN_WARNING, &pdev->dev,
			   "%s: install_msix failed.\n", bfad->pci_name);

	FUNC4(bfad);
	FUNC11(&bfad->comp);
	FUNC3(bfad);

	return 0;
}