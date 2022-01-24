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
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {int bfad_flags; int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  hal_tmo; int /*<<< orphan*/  comp; int /*<<< orphan*/  bfa_fcs; TYPE_1__ bfa; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int pci_channel_state_t ;

/* Variables and functions */
 int BFAD_EEH_BUSY ; 
 int BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  pci_channel_io_frozen 130 
#define  pci_channel_io_normal 129 
#define  pci_channel_io_perm_failure 128 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct bfad_s* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pci_ers_result_t
FUNC12(struct pci_dev *pdev, pci_channel_state_t state)
{
	struct bfad_s *bfad = FUNC8(pdev);
	unsigned long	flags;
	pci_ers_result_t ret = PCI_ERS_RESULT_NONE;

	FUNC5(KERN_ERR, &pdev->dev,
		   "error detected state: %d - flags: 0x%x\n",
		   state, bfad->bfad_flags);

	switch (state) {
	case pci_channel_io_normal: /* non-fatal error */
		FUNC9(&bfad->bfad_lock, flags);
		bfad->bfad_flags &= ~BFAD_EEH_BUSY;
		/* Suspend/fail all bfa operations */
		FUNC2(&bfad->bfa.ioc);
		FUNC10(&bfad->bfad_lock, flags);
		FUNC4(&bfad->hal_tmo);
		ret = PCI_ERS_RESULT_CAN_RECOVER;
		break;
	case pci_channel_io_frozen: /* fatal error */
		FUNC6(&bfad->comp);
		FUNC9(&bfad->bfad_lock, flags);
		bfad->bfad_flags |= BFAD_EEH_BUSY;
		/* Suspend/fail all bfa operations */
		FUNC2(&bfad->bfa.ioc);
		FUNC1(&bfad->bfa_fcs);
		FUNC10(&bfad->bfad_lock, flags);
		FUNC11(&bfad->comp);

		FUNC3(bfad);
		FUNC4(&bfad->hal_tmo);
		FUNC7(pdev);
		ret = PCI_ERS_RESULT_NEED_RESET;
		break;
	case pci_channel_io_perm_failure: /* PCI Card is DEAD */
		FUNC9(&bfad->bfad_lock, flags);
		bfad->bfad_flags |= BFAD_EEH_BUSY |
				    BFAD_EEH_PCI_CHANNEL_IO_PERM_FAILURE;
		FUNC10(&bfad->bfad_lock, flags);

		/* If the error_detected handler is called with the reason
		 * pci_channel_io_perm_failure - it will subsequently call
		 * pci_remove() entry point to remove the pci device from the
		 * system - So defer the cleanup to pci_remove(); cleaning up
		 * here causes inconsistent state during pci_remove().
		 */
		ret = PCI_ERS_RESULT_DISCONNECT;
		break;
	default:
		FUNC0(1);
	}

	return ret;
}