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
struct TYPE_4__ {int fcf_flag; } ;
struct lpfc_hba {int hba_flag; int /*<<< orphan*/  hbalock; TYPE_1__* pport; TYPE_2__ fcf; } ;
struct TYPE_3__ {scalar_t__ port_state; } ;

/* Variables and functions */
 int FCF_DISCOVERY ; 
 int FCF_REGISTERED ; 
 int HBA_FCOE_MODE ; 
 int HBA_FIP_SUPPORT ; 
 scalar_t__ LPFC_FLOGI ; 
 scalar_t__ FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct lpfc_hba *phba)
{
	/*
	 * If HBA is not running in FIP mode, if HBA does not support
	 * FCoE, if FCF discovery is ongoing, or if FCF has not been
	 * registered, do nothing.
	 */
	FUNC2(&phba->hbalock);
	if (!(phba->hba_flag & HBA_FCOE_MODE) ||
	    !(phba->fcf.fcf_flag & FCF_REGISTERED) ||
	    !(phba->hba_flag & HBA_FIP_SUPPORT) ||
	    (phba->fcf.fcf_flag & FCF_DISCOVERY) ||
	    (phba->pport->port_state == LPFC_FLOGI)) {
		FUNC3(&phba->hbalock);
		return;
	}
	FUNC3(&phba->hbalock);

	if (FUNC0(phba))
		return;

	FUNC1(phba);
}