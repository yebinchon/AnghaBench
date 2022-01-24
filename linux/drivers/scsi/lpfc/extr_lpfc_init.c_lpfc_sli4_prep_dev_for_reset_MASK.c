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
struct lpfc_hba {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba)
{
	FUNC1(phba, KERN_ERR, LOG_INIT,
			"2826 PCI channel disable preparing for reset\n");

	/* Block any management I/Os to the device */
	FUNC0(phba, LPFC_MBX_NO_WAIT);

	/* Block all SCSI devices' I/Os on the host */
	FUNC2(phba);

	/* Flush all driver's outstanding I/Os as we are to reset */
	FUNC5(phba);

	/* stop all timers */
	FUNC6(phba);

	/* Disable interrupt and pci device */
	FUNC3(phba);
	FUNC4(phba);
	FUNC7(phba->pcidev);
}