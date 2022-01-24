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
struct esas2r_adapter {int /*<<< orphan*/  flags2; int /*<<< orphan*/  intr_mode; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_IRQ_CLAIMED ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC17(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC12(pdev);
	struct esas2r_adapter *a = (struct esas2r_adapter *)host->hostdata;
	int rez;

	FUNC6(ESAS2R_LOG_INFO, &(pdev->dev), "resuming adapter()");
	FUNC6(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_set_power_state(PCI_D0) "
		       "called");
	FUNC15(pdev, PCI_D0);
	FUNC6(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_enable_wake(PCI_D0, 0) "
		       "called");
	FUNC11(pdev, PCI_D0, 0);
	FUNC6(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_restore_state() called");
	FUNC13(pdev);
	FUNC6(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_enable_device() called");
	rez = FUNC10(pdev);
	FUNC14(pdev);

	if (!a) {
		rez = -ENODEV;
		goto error_exit;
	}

	if (FUNC7(a) != 0) {
		FUNC5(ESAS2R_LOG_CRIT, "could not re-map PCI regions!");
		rez = -ENOMEM;
		goto error_exit;
	}

	/* Set up interupt mode */
	FUNC9(a, a->intr_mode);

	/*
	 * Disable chip interrupts to prevent spurious interrupts until we
	 * claim the IRQ.
	 */
	FUNC2(a);
	if (!FUNC8(a, true)) {
		FUNC1("yikes, esas2r_power_up failed");
		rez = -ENOMEM;
		goto error_exit;
	}

	FUNC0(a);

	if (FUNC16(AF2_IRQ_CLAIMED, &a->flags2)) {
		/*
		 * Now that system interrupt(s) are claimed, we can enable
		 * chip interrupts.
		 */
		FUNC3(a);
		FUNC4(a);
	} else {
		FUNC1("yikes, unable to claim IRQ");
		FUNC5(ESAS2R_LOG_CRIT, "could not re-claim IRQ!");
		rez = -ENOMEM;
		goto error_exit;
	}

error_exit:
	FUNC6(ESAS2R_LOG_CRIT, &(pdev->dev), "esas2r_resume(): %d",
		       rez);
	return rez;
}