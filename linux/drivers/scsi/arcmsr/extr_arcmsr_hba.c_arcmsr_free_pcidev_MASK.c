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
struct Scsi_Host {int dummy; } ;
struct AdapterControlBlock {struct pci_dev* pdev; int /*<<< orphan*/  refresh_timer; int /*<<< orphan*/  eternal_timer; int /*<<< orphan*/  arcmsr_do_message_isr_bh; struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 scalar_t__ set_date_time ; 

__attribute__((used)) static void FUNC10(struct AdapterControlBlock *acb)
{
	struct pci_dev *pdev;
	struct Scsi_Host *host;

	host = acb->host;
	FUNC2(acb);
	FUNC9(host);
	FUNC5(&acb->arcmsr_do_message_isr_bh);
	FUNC4(&acb->eternal_timer);
	if (set_date_time)
		FUNC4(&acb->refresh_timer);
	pdev = acb->pdev;
	FUNC1(pdev, acb);
	FUNC0(acb);
	FUNC3(acb);
	FUNC7(pdev);
	FUNC8(host);
	FUNC6(pdev);
}