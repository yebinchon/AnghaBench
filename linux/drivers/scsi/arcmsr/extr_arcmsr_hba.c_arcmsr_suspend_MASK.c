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
typedef  int /*<<< orphan*/  uint32_t ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int /*<<< orphan*/  arcmsr_do_message_isr_bh; int /*<<< orphan*/  refresh_timer; int /*<<< orphan*/  eternal_timer; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ set_date_time ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev, pm_message_t state)
{
	uint32_t intmask_org;
	struct Scsi_Host *host = FUNC8(pdev);
	struct AdapterControlBlock *acb =
		(struct AdapterControlBlock *)host->hostdata;

	intmask_org = FUNC0(acb);
	FUNC2(pdev, acb);
	FUNC4(&acb->eternal_timer);
	if (set_date_time)
		FUNC4(&acb->refresh_timer);
	FUNC5(&acb->arcmsr_do_message_isr_bh);
	FUNC3(acb);
	FUNC1(acb);
	FUNC10(pdev, host);
	FUNC9(pdev);
	FUNC7(pdev);
	FUNC11(pdev, FUNC6(pdev, state));
	return 0;
}