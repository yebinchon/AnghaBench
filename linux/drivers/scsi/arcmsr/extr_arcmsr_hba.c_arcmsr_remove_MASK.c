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
typedef  int uint16_t ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct CommandControlBlock {scalar_t__ startdone; TYPE_1__* pcmd; } ;
struct AdapterControlBlock {int maxOutstanding; int maxFreeCCB; struct CommandControlBlock** pccb_pool; int /*<<< orphan*/  ccboutstandingcount; int /*<<< orphan*/  acb_flags; int /*<<< orphan*/  refresh_timer; int /*<<< orphan*/  eternal_timer; int /*<<< orphan*/  arcmsr_do_message_isr_bh; } ;
struct TYPE_2__ {int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_ADAPTER_REMOVED ; 
 int /*<<< orphan*/  ACB_F_IOP_INITED ; 
 int /*<<< orphan*/  ACB_F_SCSISTOPADAPTER ; 
 scalar_t__ ARCMSR_CCB_ABORTED ; 
 scalar_t__ ARCMSR_CCB_START ; 
 int DID_ABORT ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC8 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC9 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC10 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC11 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC12 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC22 (struct Scsi_Host*) ; 
 scalar_t__ set_date_time ; 

__attribute__((used)) static void FUNC23(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC18(pdev);
	struct AdapterControlBlock *acb =
		(struct AdapterControlBlock *) host->hostdata;
	int poll_count = 0;
	uint16_t dev_id;

	FUNC19(pdev, PCI_DEVICE_ID, &dev_id);
	if (dev_id == 0xffff) {
		acb->acb_flags &= ~ACB_F_IOP_INITED;
		acb->acb_flags |= ACB_F_ADAPTER_REMOVED;
		FUNC10(acb);
		FUNC7(acb);
		return;
	}
	FUNC8(acb);
	FUNC22(host);
	FUNC15(&acb->arcmsr_do_message_isr_bh);
	FUNC14(&acb->eternal_timer);
	if (set_date_time)
		FUNC14(&acb->refresh_timer);
	FUNC2(acb);
	FUNC11(acb);
	FUNC4(acb);	
	acb->acb_flags |= ACB_F_SCSISTOPADAPTER;
	acb->acb_flags &= ~ACB_F_IOP_INITED;

	for (poll_count = 0; poll_count < acb->maxOutstanding; poll_count++){
		if (!FUNC13(&acb->ccboutstandingcount))
			break;
		FUNC9(acb);/* FIXME: need spinlock */
		FUNC16(25);
	}

	if (FUNC13(&acb->ccboutstandingcount)) {
		int i;

		FUNC0(acb);
		FUNC3(acb);
		for (i = 0; i < acb->maxFreeCCB; i++) {
			struct CommandControlBlock *ccb = acb->pccb_pool[i];
			if (ccb->startdone == ARCMSR_CCB_START) {
				ccb->startdone = ARCMSR_CCB_ABORTED;
				ccb->pcmd->result = DID_ABORT << 16;
				FUNC1(ccb);
			}
		}
	}
	FUNC6(pdev, acb);
	FUNC5(acb);
	FUNC12(acb);
	FUNC20(pdev);
	FUNC21(host);
	FUNC17(pdev);
}