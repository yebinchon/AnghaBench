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
struct lpfc_hba {int cfg_poll; scalar_t__ cfg_hba_queue_depth; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  ModelDesc; int /*<<< orphan*/  ModelName; } ;
struct lpfc_adapter_event_header {int /*<<< orphan*/  subcategory; int /*<<< orphan*/  event_type; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ can_queue; } ;
typedef  int /*<<< orphan*/  adapter_event ;

/* Variables and functions */
 int DISABLE_FCP_RING_INT ; 
 int /*<<< orphan*/  FC_REG_ADAPTER_EVENT ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_EVENT_ARRIVAL ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct Scsi_Host* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct lpfc_hba *phba)
{
	struct Scsi_Host  *shost;
	struct lpfc_adapter_event_header adapter_event;

	/* Get the default values for Model Name and Description */
	FUNC2(phba, phba->ModelName, phba->ModelDesc);

	/*
	 * hba setup may have changed the hba_queue_depth so we need to
	 * adjust the value of can_queue.
	 */
	shost = FUNC6(phba->pcidev);
	shost->can_queue = phba->cfg_hba_queue_depth - 10;

	FUNC3(shost);

	if (phba->cfg_poll & DISABLE_FCP_RING_INT) {
		FUNC7(shost->host_lock);
		FUNC4(phba);
		FUNC8(shost->host_lock);
	}

	FUNC5(phba, KERN_INFO, LOG_INIT,
			"0428 Perform SCSI scan\n");
	/* Send board arrival event to upper layer */
	adapter_event.event_type = FC_REG_ADAPTER_EVENT;
	adapter_event.subcategory = LPFC_EVENT_ARRIVAL;
	FUNC1(shost, FUNC0(),
				  sizeof(adapter_event),
				  (char *) &adapter_event,
				  LPFC_NL_VENDOR_ID);
	return;
}