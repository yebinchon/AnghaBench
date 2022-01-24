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
struct lpfc_vport {scalar_t__ port_type; int /*<<< orphan*/  listentry; int /*<<< orphan*/  fc_vport; int /*<<< orphan*/  load_flag; struct lpfc_hba* phba; } ;
struct TYPE_4__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_3__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct lpfc_hba {int max_vports; int /*<<< orphan*/  slim_memmap_p; int /*<<< orphan*/  ctrl_regs_memmap_p; TYPE_2__ slim2p; TYPE_1__ hbqslimp; scalar_t__ cfg_sriov_nr_virtfn; int /*<<< orphan*/  port_list_lock; int /*<<< orphan*/  vpi_ids; int /*<<< orphan*/  vpi_bmask; int /*<<< orphan*/  worker_thread; int /*<<< orphan*/  hbalock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_UNLOADING ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int /*<<< orphan*/  SLI2_SLIM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*) ; 
 struct lpfc_vport** FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC26 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC29(struct pci_dev *pdev)
{
	struct Scsi_Host  *shost = FUNC23(pdev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_vport **vports;
	struct lpfc_hba   *phba = vport->phba;
	int i;

	FUNC27(&phba->hbalock);
	vport->load_flag |= FC_UNLOADING;
	FUNC28(&phba->hbalock);

	FUNC12(vport);

	/* Release all the vports against this physical port */
	vports = FUNC8(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			if (vports[i]->port_type == LPFC_PHYSICAL_PORT)
				continue;
			FUNC2(vports[i]->fc_vport);
		}
	FUNC10(phba, vports);

	/* Remove FC host and then SCSI host with the physical port */
	FUNC1(shost);
	FUNC26(shost);

	FUNC7(vport);

	/*
	 * Bring down the SLI Layer. This step disable all interrupts,
	 * clears the rings, discards all mailbox commands, and resets
	 * the HBA.
	 */

	/* HBA interrupt will be disabled after this call */
	FUNC18(phba);
	/* Stop kthread signal shall trigger work_done one more time */
	FUNC5(phba->worker_thread);
	/* Final cleanup of txcmplq and reset the HBA */
	FUNC16(phba);

	FUNC4(phba->vpi_bmask);
	FUNC4(phba->vpi_ids);

	FUNC20(phba);
	FUNC27(&phba->port_list_lock);
	FUNC6(&vport->listentry);
	FUNC28(&phba->port_list_lock);

	FUNC9(vport);

	/* Disable SR-IOV if enabled */
	if (phba->cfg_sriov_nr_virtfn)
		FUNC22(pdev);

	/* Disable interrupt */
	FUNC17(phba);

	FUNC25(shost);

	/*
	 * Call scsi_free before mem_free since scsi bufs are released to their
	 * corresponding pools here.
	 */
	FUNC15(phba);
	FUNC11(phba);

	FUNC14(phba);

	FUNC0(&pdev->dev, FUNC19(),
			  phba->hbqslimp.virt, phba->hbqslimp.phys);

	/* Free resources associated with SLI2 interface */
	FUNC0(&pdev->dev, SLI2_SLIM_SIZE,
			  phba->slim2p.virt, phba->slim2p.phys);

	/* unmap adapter SLIM and Control Registers */
	FUNC3(phba->ctrl_regs_memmap_p);
	FUNC3(phba->slim_memmap_p);

	FUNC13(phba);

	FUNC24(pdev);
	FUNC21(pdev);
}