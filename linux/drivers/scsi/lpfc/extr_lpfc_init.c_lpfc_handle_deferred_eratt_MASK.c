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
typedef  int uint32_t ;
struct lpfc_sli {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int work_hs; scalar_t__ MBslimaddr; void** work_status; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_1__* pport; int /*<<< orphan*/  HSregaddr; int /*<<< orphan*/  pcidev; struct lpfc_sli sli; } ;
struct TYPE_2__ {int load_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFER_ERATT ; 
 int FC_UNLOADING ; 
 int HS_FFER1 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBX_WAIT ; 
 int /*<<< orphan*/  LPFC_SLI_ACTIVE ; 
 int UNPLUG_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct lpfc_hba *phba)
{
	uint32_t old_host_status = phba->work_hs;
	struct lpfc_sli *psli = &phba->sli;

	/* If the pci channel is offline, ignore possible errors,
	 * since we cannot communicate with the pci card anyway.
	 */
	if (FUNC6(phba->pcidev)) {
		FUNC8(&phba->hbalock);
		phba->hba_flag &= ~DEFER_ERATT;
		FUNC9(&phba->hbalock);
		return;
	}

	FUNC2(phba, KERN_ERR, LOG_INIT,
		"0479 Deferred Adapter Hardware Error "
		"Data: x%x x%x x%x\n",
		phba->work_hs,
		phba->work_status[0], phba->work_status[1]);

	FUNC8(&phba->hbalock);
	psli->sli_flag &= ~LPFC_SLI_ACTIVE;
	FUNC9(&phba->hbalock);


	/*
	 * Firmware stops when it triggred erratt. That could cause the I/Os
	 * dropped by the firmware. Error iocb (I/O) on txcmplq and let the
	 * SCSI layer retry it after re-establishing link.
	 */
	FUNC4(phba);

	/*
	 * There was a firmware error. Take the hba offline and then
	 * attempt to restart it.
	 */
	FUNC1(phba, LPFC_MBX_WAIT);
	FUNC0(phba);

	/* Wait for the ER1 bit to clear.*/
	while (phba->work_hs & HS_FFER1) {
		FUNC5(100);
		if (FUNC3(phba->HSregaddr, &phba->work_hs)) {
			phba->work_hs = UNPLUG_ERR ;
			break;
		}
		/* If driver is unloading let the worker thread continue */
		if (phba->pport->load_flag & FC_UNLOADING) {
			phba->work_hs = 0;
			break;
		}
	}

	/*
	 * This is to ptrotect against a race condition in which
	 * first write to the host attention register clear the
	 * host status register.
	 */
	if ((!phba->work_hs) && (!(phba->pport->load_flag & FC_UNLOADING)))
		phba->work_hs = old_host_status & ~HS_FFER1;

	FUNC8(&phba->hbalock);
	phba->hba_flag &= ~DEFER_ERATT;
	FUNC9(&phba->hbalock);
	phba->work_status[0] = FUNC7(phba->MBslimaddr + 0xa8);
	phba->work_status[1] = FUNC7(phba->MBslimaddr + 0xac);
}