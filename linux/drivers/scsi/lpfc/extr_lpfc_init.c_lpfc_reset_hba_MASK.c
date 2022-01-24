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
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; int /*<<< orphan*/  link_state; int /*<<< orphan*/  cfg_enable_hba_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
 int /*<<< orphan*/  LPFC_MBX_WAIT ; 
 int LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	/* If resets are disabled then set error state and return. */
	if (!phba->cfg_enable_hba_reset) {
		phba->link_state = LPFC_HBA_ERROR;
		return;
	}
	if (phba->sli.sli_flag & LPFC_SLI_ACTIVE)
		FUNC1(phba, LPFC_MBX_WAIT);
	else
		FUNC1(phba, LPFC_MBX_NO_WAIT);
	FUNC0(phba);
	FUNC3(phba);
	FUNC2(phba);
	FUNC4(phba);
}