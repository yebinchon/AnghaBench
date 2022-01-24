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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ intr_mode; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 scalar_t__ LPFC_INTR_ERROR ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,scalar_t__) ; 
 int FUNC7 (struct lpfc_hba*) ; 
 int FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 

__attribute__((used)) static int
FUNC11(struct lpfc_hba *phba, int mbx_action,
			    bool en_rn_msg)
{
	int rc;
	uint32_t intr_mode;

	if (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) >=
	    LPFC_SLI_INTF_IF_TYPE_2) {
		/*
		 * On error status condition, driver need to wait for port
		 * ready before performing reset.
		 */
		rc = FUNC7(phba);
		if (rc)
			return rc;
	}

	/* need reset: attempt for port recovery */
	if (en_rn_msg)
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"2887 Reset Needed: Attempting Port "
				"Recovery...\n");
	FUNC2(phba, mbx_action);
	FUNC9(phba);
	FUNC1(phba);
	/* release interrupt for possible resource change */
	FUNC5(phba);
	rc = FUNC8(phba);
	if (rc) {
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"6309 Failed to restart board\n");
		return rc;
	}
	/* request and enable interrupt */
	intr_mode = FUNC6(phba, phba->intr_mode);
	if (intr_mode == LPFC_INTR_ERROR) {
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"3175 Failed to enable interrupt\n");
		return -EIO;
	}
	phba->intr_mode = intr_mode;
	rc = FUNC3(phba);
	if (rc == 0)
		FUNC10(phba);

	return rc;
}