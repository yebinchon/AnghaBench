#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ fcf_indx; } ;
struct TYPE_6__ {scalar_t__ fcf_indx; } ;
struct TYPE_5__ {scalar_t__ fcf_flag; TYPE_3__ failover_rec; TYPE_2__ current_rec; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ hba_flag; TYPE_1__ fcf; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  pport; } ;
struct lpfc_fcf_rec {int dummy; } ;
struct fcf_record {int dummy; } ;
typedef  int /*<<< orphan*/  LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_ENABLE ; 
 scalar_t__ FCF_DISCOVERY ; 
 scalar_t__ FCF_RR_INPROG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_FIP ; 
 scalar_t__ LPFC_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_3__*,struct fcf_record*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct fcf_record*) ; 
 int /*<<< orphan*/  lpfc_fcf_record_fcf_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lpfc_hba*,struct fcf_record*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 struct fcf_record* FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct lpfc_hba*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,struct fcf_record*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void
FUNC18(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
	struct fcf_record *new_fcf_record;
	uint32_t boot_flag, addr_mode;
	uint16_t next_fcf_index, fcf_index;
	uint16_t current_fcf_index;
	uint16_t vlan_id;
	int rc;

	/* If link state is not up, stop the roundrobin failover process */
	if (phba->link_state < LPFC_LINK_UP) {
		FUNC16(&phba->hbalock);
		phba->fcf.fcf_flag &= ~FCF_DISCOVERY;
		phba->hba_flag &= ~FCF_RR_INPROG;
		FUNC17(&phba->hbalock);
		goto out;
	}

	/* Parse the FCF record from the non-embedded mailbox command */
	new_fcf_record = FUNC6(phba, mboxq,
						      &next_fcf_index);
	if (!new_fcf_record) {
		FUNC4(phba, KERN_WARNING, LOG_FIP,
				"2766 Mailbox command READ_FCF_RECORD "
				"failed to retrieve a FCF record. "
				"hba_flg x%x fcf_flg x%x\n", phba->hba_flag,
				phba->fcf.fcf_flag);
		FUNC13(phba);
		goto out;
	}

	/* Get the needed parameters from FCF record */
	rc = FUNC3(phba, new_fcf_record, &boot_flag,
				      &addr_mode, &vlan_id);

	/* Log the FCF record information if turned on */
	FUNC10(phba, new_fcf_record, vlan_id,
				      next_fcf_index);

	fcf_index = FUNC1(lpfc_fcf_record_fcf_index, new_fcf_record);
	if (!rc) {
		FUNC4(phba, KERN_INFO, LOG_FIP,
				"2848 Remove ineligible FCF (x%x) from "
				"from roundrobin bmask\n", fcf_index);
		/* Clear roundrobin bmask bit for ineligible FCF */
		FUNC7(phba, fcf_index);
		/* Perform next round of roundrobin FCF failover */
		fcf_index = FUNC8(phba);
		rc = FUNC9(phba->pport, fcf_index);
		if (rc)
			goto out;
		goto error_out;
	}

	if (fcf_index == phba->fcf.current_rec.fcf_indx) {
		FUNC4(phba, KERN_INFO, LOG_FIP,
				"2760 Perform FLOGI roundrobin FCF failover: "
				"FCF (x%x) back to FCF (x%x)\n",
				phba->fcf.current_rec.fcf_indx, fcf_index);
		/* Wait 500 ms before retrying FLOGI to current FCF */
		FUNC15(500);
		FUNC2(phba->pport);
		goto out;
	}

	/* Upload new FCF record to the failover FCF record */
	FUNC4(phba, KERN_INFO, LOG_FIP,
			"2834 Update current FCF (x%x) with new FCF (x%x)\n",
			phba->fcf.failover_rec.fcf_indx, fcf_index);
	FUNC16(&phba->hbalock);
	FUNC0(phba, &phba->fcf.failover_rec,
				 new_fcf_record, addr_mode, vlan_id,
				 (boot_flag ? BOOT_ENABLE : 0));
	FUNC17(&phba->hbalock);

	current_fcf_index = phba->fcf.current_rec.fcf_indx;

	/* Unregister the current in-use FCF record */
	FUNC12(phba);

	/* Replace in-use record with the new record */
	FUNC14(&phba->fcf.current_rec, &phba->fcf.failover_rec,
	       sizeof(struct lpfc_fcf_rec));

	FUNC4(phba, KERN_INFO, LOG_FIP,
			"2783 Perform FLOGI roundrobin FCF failover: FCF "
			"(x%x) to FCF (x%x)\n", current_fcf_index, fcf_index);

error_out:
	FUNC5(phba);
out:
	FUNC11(phba, mboxq);
}