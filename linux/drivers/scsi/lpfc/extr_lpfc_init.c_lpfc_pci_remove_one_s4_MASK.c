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
struct pci_dev {int dummy; } ;
struct lpfc_vport {scalar_t__ port_type; int /*<<< orphan*/  listentry; int /*<<< orphan*/  fc_vport; int /*<<< orphan*/  load_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int max_vports; int /*<<< orphan*/  port_list_lock; scalar_t__ cfg_xri_rebalancing; int /*<<< orphan*/  hbalock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_UNLOADING ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 struct lpfc_vport** FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC22 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC25(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC20(pdev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_vport **vports;
	struct lpfc_hba *phba = vport->phba;
	int i;

	/* Mark the device unloading flag */
	FUNC23(&phba->hbalock);
	vport->load_flag |= FC_UNLOADING;
	FUNC24(&phba->hbalock);

	/* Free the HBA sysfs attributes */
	FUNC10(vport);

	/* Release all the vports against this physical port */
	vports = FUNC4(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			if (vports[i]->port_type == LPFC_PHYSICAL_PORT)
				continue;
			FUNC1(vports[i]->fc_vport);
		}
	FUNC7(phba, vports);

	/* Remove FC host and then SCSI host with the physical port */
	FUNC0(shost);
	FUNC22(shost);

	/* Perform ndlp cleanup on the physical port.  The nvme and nvmet
	 * localports are destroyed after to cleanup all transport memory.
	 */
	FUNC3(vport);
	FUNC14(phba);
	FUNC13(vport);

	/* De-allocate multi-XRI pools */
	if (phba->cfg_xri_rebalancing)
		FUNC6(phba);

	/*
	 * Bring down the SLI Layer. This step disables all interrupts,
	 * clears the rings, discards all mailbox commands, and resets
	 * the HBA FCoE function.
	 */
	FUNC5(vport);

	FUNC18(phba);
	FUNC23(&phba->port_list_lock);
	FUNC2(&vport->listentry);
	FUNC24(&phba->port_list_lock);

	/* Perform scsi free before driver resource_unset since scsi
	 * buffers are released to their corresponding pools here.
	 */
	FUNC12(phba);
	FUNC9(phba);
	FUNC16(phba);

	FUNC19(phba);
	FUNC15(phba);

	/* Unmap adapter Control and Doorbell registers */
	FUNC17(phba);

	/* Release PCI resources and disable device's PCI function */
	FUNC21(shost);
	FUNC8(phba);

	/* Finally, free the driver's device data structure */
	FUNC11(phba);

	return;
}