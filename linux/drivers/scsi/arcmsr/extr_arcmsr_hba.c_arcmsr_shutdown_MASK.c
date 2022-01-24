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
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int acb_flags; int /*<<< orphan*/  arcmsr_do_message_isr_bh; int /*<<< orphan*/  refresh_timer; int /*<<< orphan*/  eternal_timer; } ;

/* Variables and functions */
 int ACB_F_ADAPTER_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC6 (struct pci_dev*) ; 
 scalar_t__ set_date_time ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC6(pdev);
	struct AdapterControlBlock *acb =
		(struct AdapterControlBlock *)host->hostdata;
	if (acb->acb_flags & ACB_F_ADAPTER_REMOVED)
		return;
	FUNC4(&acb->eternal_timer);
	if (set_date_time)
		FUNC4(&acb->refresh_timer);
	FUNC0(acb);
	FUNC2(pdev, acb);
	FUNC5(&acb->arcmsr_do_message_isr_bh);
	FUNC3(acb);
	FUNC1(acb);
}