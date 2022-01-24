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
typedef  scalar_t__ uint32_t ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fcf_pri_list; } ;
struct lpfc_hba {scalar_t__ cfg_use_msi; scalar_t__ intr_type; int cfg_irq_chann; int cfg_enable_fc4_type; scalar_t__ nvmet_support; int cfg_nvmet_mrq; scalar_t__ cfg_request_firmware_upgrade; scalar_t__ intr_mode; struct lpfc_vport* pport; int /*<<< orphan*/  ModelDesc; int /*<<< orphan*/  ModelName; TYPE_1__ fcf; int /*<<< orphan*/  active_rrq_list; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_FW_UPGRADE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_ENABLE_NVME ; 
 scalar_t__ LPFC_INTR_ERROR ; 
 int /*<<< orphan*/  LPFC_PCI_DEV_OC ; 
 scalar_t__ MSIX ; 
 int FUNC1 (struct lpfc_vport*) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpfc_hba* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC14 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC17 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC18 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*) ; 
 int FUNC20 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*) ; 
 scalar_t__ FUNC22 (struct lpfc_hba*,scalar_t__) ; 
 scalar_t__ FUNC23 (struct lpfc_hba*) ; 
 int FUNC24 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC26 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC27 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC29 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC30 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC31(struct pci_dev *pdev, const struct pci_device_id *pid)
{
	struct lpfc_hba   *phba;
	struct lpfc_vport *vport = NULL;
	struct Scsi_Host  *shost = NULL;
	int error;
	uint32_t cfg_mode, intr_mode;

	/* Allocate memory for HBA structure */
	phba = FUNC11(pdev);
	if (!phba)
		return -ENOMEM;

	/* Perform generic PCI device enabling operation */
	error = FUNC8(phba);
	if (error)
		goto out_free_phba;

	/* Set up SLI API function jump table for PCI-device group-1 HBAs */
	error = FUNC2(phba, LPFC_PCI_DEV_OC);
	if (error)
		goto out_disable_pci_dev;

	/* Set up SLI-4 specific device PCI memory space */
	error = FUNC24(phba);
	if (error) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1410 Failed to set up pci memory space.\n");
		goto out_disable_pci_dev;
	}

	/* Set up SLI-4 Specific device driver resources */
	error = FUNC20(phba);
	if (error) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1412 Failed to set up driver resource.\n");
		goto out_unset_pci_mem_s4;
	}

	FUNC0(&phba->active_rrq_list);
	FUNC0(&phba->fcf.fcf_pri_list);

	/* Set up common device driver resources */
	error = FUNC17(phba);
	if (error) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1414 Failed to set up driver resource.\n");
		goto out_unset_driver_resource_s4;
	}

	/* Get the default values for Model Name and Description */
	FUNC10(phba, phba->ModelName, phba->ModelDesc);

	/* Now, trying to enable interrupt and bring up the device */
	cfg_mode = phba->cfg_use_msi;

	/* Put device to a known state before enabling interrupt */
	phba->pport = NULL;
	FUNC28(phba);

	/* Configure and enable interrupt */
	intr_mode = FUNC22(phba, cfg_mode);
	if (intr_mode == LPFC_INTR_ERROR) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"0426 Failed to enable interrupt.\n");
		error = -ENODEV;
		goto out_unset_driver_resource;
	}
	/* Default to single EQ for non-MSI-X */
	if (phba->intr_type != MSIX) {
		phba->cfg_irq_chann = 1;
		if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
			if (phba->nvmet_support)
				phba->cfg_nvmet_mrq = 1;
		}
	}
	FUNC3(phba, phba->cfg_irq_chann);

	/* Create SCSI host to the physical port */
	error = FUNC4(phba);
	if (error) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1415 Failed to create scsi host.\n");
		goto out_disable_intr;
	}
	vport = phba->pport;
	shost = FUNC18(vport); /* save shost for error cleanup */

	/* Configure sysfs attributes */
	error = FUNC1(vport);
	if (error) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1416 Failed to allocate sysfs attr\n");
		goto out_destroy_shost;
	}

	/* Set up SLI-4 HBA */
	if (FUNC23(phba)) {
		FUNC16(phba, KERN_ERR, LOG_INIT,
				"1421 Failed to set up hba\n");
		error = -ENODEV;
		goto out_free_sysfs_attr;
	}

	/* Log the current active interrupt mode */
	phba->intr_mode = intr_mode;
	FUNC13(phba, intr_mode);

	/* Perform post initialization setup */
	FUNC15(phba);

	/* NVME support in FW earlier in the driver load corrects the
	 * FC4 type making a check for nvme_support unnecessary.
	 */
	if (phba->nvmet_support == 0) {
		if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
			/* Create NVME binding with nvme_fc_transport. This
			 * ensures the vport is initialized.  If the localport
			 * create fails, it should not unload the driver to
			 * support field issues.
			 */
			error = FUNC14(vport);
			if (error) {
				FUNC16(phba, KERN_ERR, LOG_INIT,
						"6004 NVME registration "
						"failed, error x%x\n",
						error);
			}
		}
	}

	/* check for firmware upgrade or downgrade */
	if (phba->cfg_request_firmware_upgrade)
		FUNC27(phba, INT_FW_UPGRADE);

	/* Check if there are static vports to be created. */
	FUNC5(phba);

	/* Enable RAS FW log support */
	FUNC26(phba);

	return 0;

out_free_sysfs_attr:
	FUNC9(vport);
out_destroy_shost:
	FUNC6(phba);
out_disable_intr:
	FUNC19(phba);
out_unset_driver_resource:
	FUNC29(phba);
out_unset_driver_resource_s4:
	FUNC21(phba);
out_unset_pci_mem_s4:
	FUNC25(phba);
out_disable_pci_dev:
	FUNC7(phba);
	if (shost)
		FUNC30(shost);
out_free_phba:
	FUNC12(phba);
	return error;
}