#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ flag; } ;
struct TYPE_5__ {int /*<<< orphan*/  fcf_flag; TYPE_1__ current_rec; } ;
struct lpfc_hba {scalar_t__ link_state; TYPE_3__* pport; int /*<<< orphan*/  hbalock; TYPE_2__ fcf; } ;
struct TYPE_6__ {int load_flag; int port_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCF_INIT_DISC ; 
 int FC_UNLOADING ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_DISCOVERY ; 
 int LOG_MBOX ; 
 int /*<<< orphan*/  LPFC_FCOE_FCF_GET_FIRST ; 
 scalar_t__ LPFC_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct lpfc_hba *phba)
{
	int rc;

	/* Preparation for unregistering fcf */
	rc = FUNC4(phba);
	if (rc) {
		FUNC0(phba, KERN_ERR, LOG_DISCOVERY,
				"2748 Failed to prepare for unregistering "
				"HBA's FCF record: rc=%d\n", rc);
		return;
	}

	/* Now, unregister FCF record and reset HBA FCF state */
	rc = FUNC3(phba);
	if (rc)
		return;
	/* Reset HBA FCF states after successful unregister FCF */
	phba->fcf.fcf_flag = 0;
	phba->fcf.current_rec.flag = 0;

	/*
	 * If driver is not unloading, check if there is any other
	 * FCF record that can be used for discovery.
	 */
	if ((phba->pport->load_flag & FC_UNLOADING) ||
	    (phba->link_state < LPFC_LINK_UP))
		return;

	/* This is considered as the initial FCF discovery scan */
	FUNC5(&phba->hbalock);
	phba->fcf.fcf_flag |= FCF_INIT_DISC;
	FUNC6(&phba->hbalock);

	/* Reset FCF roundrobin bmask for new discovery */
	FUNC1(phba);

	rc = FUNC2(phba, LPFC_FCOE_FCF_GET_FIRST);

	if (rc) {
		FUNC5(&phba->hbalock);
		phba->fcf.fcf_flag &= ~FCF_INIT_DISC;
		FUNC6(&phba->hbalock);
		FUNC0(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
				"2553 lpfc_unregister_unused_fcf failed "
				"to read FCF record HBA state x%x\n",
				phba->pport->port_state);
	}
}