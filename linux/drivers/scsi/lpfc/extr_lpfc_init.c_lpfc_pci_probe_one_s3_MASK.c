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
typedef  int /*<<< orphan*/  uint32_t ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_vport {int dummy; } ;
struct TYPE_3__ {scalar_t__ sli_intr; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int /*<<< orphan*/  intr_mode; TYPE_2__ sli; int /*<<< orphan*/  cfg_use_msi; struct lpfc_vport* pport; int /*<<< orphan*/  ModelDesc; int /*<<< orphan*/  ModelName; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_INTR_ERROR ; 
 int /*<<< orphan*/  LPFC_IOCB_LIST_CNT ; 
 scalar_t__ LPFC_MSIX_VECTORS ; 
 int /*<<< orphan*/  LPFC_PCI_DEV_LP ; 
 int FUNC0 (struct lpfc_vport*) ; 
 int FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpfc_hba* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int FUNC12 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC17 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*) ; 
 int FUNC19 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct lpfc_hba*) ; 
 int FUNC23 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC26 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC27 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC30(struct pci_dev *pdev, const struct pci_device_id *pid)
{
	struct lpfc_hba   *phba;
	struct lpfc_vport *vport = NULL;
	struct Scsi_Host  *shost = NULL;
	int error;
	uint32_t cfg_mode, intr_mode;

	/* Allocate memory for HBA structure */
	phba = FUNC10(pdev);
	if (!phba)
		return -ENOMEM;

	/* Perform generic PCI device enabling operation */
	error = FUNC6(phba);
	if (error)
		goto out_free_phba;

	/* Set up SLI API function jump table for PCI-device group-0 HBAs */
	error = FUNC1(phba, LPFC_PCI_DEV_LP);
	if (error)
		goto out_disable_pci_dev;

	/* Set up SLI-3 specific device PCI memory space */
	error = FUNC23(phba);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1402 Failed to set up pci memory space.\n");
		goto out_disable_pci_dev;
	}

	/* Set up SLI-3 specific device driver resources */
	error = FUNC19(phba);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1404 Failed to set up driver resource.\n");
		goto out_unset_pci_mem_s3;
	}

	/* Initialize and populate the iocb list per host */

	error = FUNC12(phba, LPFC_IOCB_LIST_CNT);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1405 Failed to initialize iocb list.\n");
		goto out_unset_driver_resource_s3;
	}

	/* Set up common device driver resources */
	error = FUNC16(phba);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1406 Failed to set up driver resource.\n");
		goto out_free_iocb_list;
	}

	/* Get the default values for Model Name and Description */
	FUNC9(phba, phba->ModelName, phba->ModelDesc);

	/* Create SCSI host to the physical port */
	error = FUNC2(phba);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1407 Failed to create scsi host.\n");
		goto out_unset_driver_resource;
	}

	/* Configure sysfs attributes */
	vport = phba->pport;
	error = FUNC0(vport);
	if (error) {
		FUNC15(phba, KERN_ERR, LOG_INIT,
				"1476 Failed to allocate sysfs attr\n");
		goto out_destroy_shost;
	}

	shost = FUNC17(vport); /* save shost for error cleanup */
	/* Now, trying to enable interrupt and bring up the device */
	cfg_mode = phba->cfg_use_msi;
	while (true) {
		/* Put device to a known state before enabling interrupt */
		FUNC25(phba);
		/* Configure and enable interrupt */
		intr_mode = FUNC21(phba, cfg_mode);
		if (intr_mode == LPFC_INTR_ERROR) {
			FUNC15(phba, KERN_ERR, LOG_INIT,
					"0431 Failed to enable interrupt.\n");
			error = -ENODEV;
			goto out_free_sysfs_attr;
		}
		/* SLI-3 HBA setup */
		if (FUNC22(phba)) {
			FUNC15(phba, KERN_ERR, LOG_INIT,
					"1477 Failed to set up hba\n");
			error = -ENODEV;
			goto out_remove_device;
		}

		/* Wait 50ms for the interrupts of previous mailbox commands */
		FUNC28(50);
		/* Check active interrupts on message signaled interrupts */
		if (intr_mode == 0 ||
		    phba->sli.slistat.sli_intr > LPFC_MSIX_VECTORS) {
			/* Log the current active interrupt mode */
			phba->intr_mode = intr_mode;
			FUNC13(phba, intr_mode);
			break;
		} else {
			FUNC15(phba, KERN_INFO, LOG_INIT,
					"0447 Configure interrupt mode (%d) "
					"failed active interrupt test.\n",
					intr_mode);
			/* Disable the current interrupt mode */
			FUNC18(phba);
			/* Try next level of interrupt mode */
			cfg_mode = --intr_mode;
		}
	}

	/* Perform post initialization setup */
	FUNC14(phba);

	/* Check if there are static vports to be created. */
	FUNC3(phba);

	return 0;

out_remove_device:
	FUNC27(phba);
out_free_sysfs_attr:
	FUNC8(vport);
out_destroy_shost:
	FUNC4(phba);
out_unset_driver_resource:
	FUNC26(phba);
out_free_iocb_list:
	FUNC7(phba);
out_unset_driver_resource_s3:
	FUNC20(phba);
out_unset_pci_mem_s3:
	FUNC24(phba);
out_disable_pci_dev:
	FUNC5(phba);
	if (shost)
		FUNC29(shost);
out_free_phba:
	FUNC11(phba);
	return error;
}