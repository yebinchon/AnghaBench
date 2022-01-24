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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct lpfc_fcf_rec {scalar_t__ fcf_indx; int flag; scalar_t__ priority; } ;
struct TYPE_4__ {int fcf_flag; int eligible_fcf_cnt; struct lpfc_fcf_rec current_rec; struct lpfc_fcf_rec failover_rec; } ;
struct lpfc_hba {int hba_flag; scalar_t__ cfg_fcf_failover_policy; int /*<<< orphan*/  hbalock; TYPE_2__ fcf; int /*<<< orphan*/  fcoe_eventtag_at_fcf_scan; TYPE_1__* pport; } ;
struct fcf_record {scalar_t__ fip_priority; } ;
struct TYPE_3__ {int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  port_state; } ;
typedef  int /*<<< orphan*/  LPFC_MBOXQ_t ;

/* Variables and functions */
 int BOOT_ENABLE ; 
 int FCF_AVAILABLE ; 
 int FCF_IN_USE ; 
 int FCF_REDISC_EVT ; 
 int FCF_REDISC_FOV ; 
 int FCF_REDISC_PEND ; 
 int FCF_TS_INPROG ; 
 int HBA_DEVLOSS_TMO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_FIP ; 
 scalar_t__ LPFC_FCF_FOV ; 
 scalar_t__ LPFC_FCOE_FCF_GET_FIRST ; 
 scalar_t__ LPFC_FCOE_FCF_NEXT_NONE ; 
 scalar_t__ LPFC_FCOE_IGNORE_VID ; 
 scalar_t__ LPFC_FCOE_NULL_VID ; 
 int /*<<< orphan*/  LPFC_SKIP_UNREG_FCF ; 
 int RECORD_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_fcf_rec*,struct fcf_record*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct fcf_record*) ; 
 scalar_t__ FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcf_record_fcf_avail ; 
 int /*<<< orphan*/  lpfc_fcf_record_fcf_index ; 
 int /*<<< orphan*/  lpfc_fcf_record_fcf_sol ; 
 int /*<<< orphan*/  lpfc_fcf_record_fcf_valid ; 
 int FUNC4 (struct lpfc_hba*,struct fcf_record*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int FUNC7 (struct lpfc_hba*,scalar_t__,struct fcf_record*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,scalar_t__) ; 
 struct fcf_record* FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC10 (struct lpfc_hba*,struct lpfc_fcf_rec*,struct fcf_record*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,struct fcf_record*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_fcf_rec*,struct lpfc_fcf_rec*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void
FUNC20(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
	struct fcf_record *new_fcf_record;
	uint32_t boot_flag, addr_mode;
	uint16_t fcf_index, next_fcf_index;
	struct lpfc_fcf_rec *fcf_rec = NULL;
	uint16_t vlan_id = LPFC_FCOE_NULL_VID;
	bool select_new_fcf;
	int rc;

	/* If there is pending FCoE event restart FCF table scan */
	if (FUNC3(phba, LPFC_SKIP_UNREG_FCF)) {
		FUNC13(phba, mboxq);
		return;
	}

	/* Parse the FCF record from the non-embedded mailbox command */
	new_fcf_record = FUNC9(phba, mboxq,
						      &next_fcf_index);
	if (!new_fcf_record) {
		FUNC5(phba, KERN_ERR, LOG_FIP,
				"2765 Mailbox command READ_FCF_RECORD "
				"failed to retrieve a FCF record.\n");
		/* Let next new FCF event trigger fast failover */
		FUNC18(&phba->hbalock);
		phba->hba_flag &= ~FCF_TS_INPROG;
		FUNC19(&phba->hbalock);
		FUNC13(phba, mboxq);
		return;
	}

	/* Check the FCF record against the connection list */
	rc = FUNC4(phba, new_fcf_record, &boot_flag,
				      &addr_mode, &vlan_id);

	/* Log the FCF record information if turned on */
	FUNC12(phba, new_fcf_record, vlan_id,
				      next_fcf_index);

	/*
	 * If the fcf record does not match with connect list entries
	 * read the next entry; otherwise, this is an eligible FCF
	 * record for roundrobin FCF failover.
	 */
	if (!rc) {
		FUNC8(phba,
					FUNC2(lpfc_fcf_record_fcf_index,
					       new_fcf_record));
		FUNC5(phba, KERN_WARNING, LOG_FIP,
				"2781 FCF (x%x) failed connection "
				"list check: (x%x/x%x/%x)\n",
				FUNC2(lpfc_fcf_record_fcf_index,
				       new_fcf_record),
				FUNC2(lpfc_fcf_record_fcf_avail,
				       new_fcf_record),
				FUNC2(lpfc_fcf_record_fcf_valid,
				       new_fcf_record),
				FUNC2(lpfc_fcf_record_fcf_sol,
				       new_fcf_record));
		if ((phba->fcf.fcf_flag & FCF_IN_USE) &&
		    FUNC10(phba, &phba->fcf.current_rec,
		    new_fcf_record, LPFC_FCOE_IGNORE_VID)) {
			if (FUNC2(lpfc_fcf_record_fcf_index, new_fcf_record) !=
			    phba->fcf.current_rec.fcf_indx) {
				FUNC5(phba, KERN_ERR, LOG_FIP,
					"2862 FCF (x%x) matches property "
					"of in-use FCF (x%x)\n",
					FUNC2(lpfc_fcf_record_fcf_index,
					       new_fcf_record),
					phba->fcf.current_rec.fcf_indx);
				goto read_next_fcf;
			}
			/*
			 * In case the current in-use FCF record becomes
			 * invalid/unavailable during FCF discovery that
			 * was not triggered by fast FCF failover process,
			 * treat it as fast FCF failover.
			 */
			if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND) &&
			    !(phba->fcf.fcf_flag & FCF_REDISC_FOV)) {
				FUNC5(phba, KERN_WARNING, LOG_FIP,
						"2835 Invalid in-use FCF "
						"(x%x), enter FCF failover "
						"table scan.\n",
						phba->fcf.current_rec.fcf_indx);
				FUNC18(&phba->hbalock);
				phba->fcf.fcf_flag |= FCF_REDISC_FOV;
				FUNC19(&phba->hbalock);
				FUNC13(phba, mboxq);
				FUNC11(phba,
						LPFC_FCOE_FCF_GET_FIRST);
				return;
			}
		}
		goto read_next_fcf;
	} else {
		fcf_index = FUNC2(lpfc_fcf_record_fcf_index, new_fcf_record);
		rc = FUNC7(phba, fcf_index,
							new_fcf_record);
		if (rc)
			goto read_next_fcf;
	}

	/*
	 * If this is not the first FCF discovery of the HBA, use last
	 * FCF record for the discovery. The condition that a rescan
	 * matches the in-use FCF record: fabric name, switch name, mac
	 * address, and vlan_id.
	 */
	FUNC18(&phba->hbalock);
	if (phba->fcf.fcf_flag & FCF_IN_USE) {
		if (phba->cfg_fcf_failover_policy == LPFC_FCF_FOV &&
			FUNC10(phba, &phba->fcf.current_rec,
		    new_fcf_record, vlan_id)) {
			if (FUNC2(lpfc_fcf_record_fcf_index, new_fcf_record) ==
			    phba->fcf.current_rec.fcf_indx) {
				phba->fcf.fcf_flag |= FCF_AVAILABLE;
				if (phba->fcf.fcf_flag & FCF_REDISC_PEND)
					/* Stop FCF redisc wait timer */
					FUNC0(
									phba);
				else if (phba->fcf.fcf_flag & FCF_REDISC_FOV)
					/* Fast failover, mark completed */
					phba->fcf.fcf_flag &= ~FCF_REDISC_FOV;
				FUNC19(&phba->hbalock);
				FUNC5(phba, KERN_INFO, LOG_FIP,
						"2836 New FCF matches in-use "
						"FCF (x%x), port_state:x%x, "
						"fc_flag:x%x\n",
						phba->fcf.current_rec.fcf_indx,
						phba->pport->port_state,
						phba->pport->fc_flag);
				goto out;
			} else
				FUNC5(phba, KERN_ERR, LOG_FIP,
					"2863 New FCF (x%x) matches "
					"property of in-use FCF (x%x)\n",
					FUNC2(lpfc_fcf_record_fcf_index,
					       new_fcf_record),
					phba->fcf.current_rec.fcf_indx);
		}
		/*
		 * Read next FCF record from HBA searching for the matching
		 * with in-use record only if not during the fast failover
		 * period. In case of fast failover period, it shall try to
		 * determine whether the FCF record just read should be the
		 * next candidate.
		 */
		if (!(phba->fcf.fcf_flag & FCF_REDISC_FOV)) {
			FUNC19(&phba->hbalock);
			goto read_next_fcf;
		}
	}
	/*
	 * Update on failover FCF record only if it's in FCF fast-failover
	 * period; otherwise, update on current FCF record.
	 */
	if (phba->fcf.fcf_flag & FCF_REDISC_FOV)
		fcf_rec = &phba->fcf.failover_rec;
	else
		fcf_rec = &phba->fcf.current_rec;

	if (phba->fcf.fcf_flag & FCF_AVAILABLE) {
		/*
		 * If the driver FCF record does not have boot flag
		 * set and new hba fcf record has boot flag set, use
		 * the new hba fcf record.
		 */
		if (boot_flag && !(fcf_rec->flag & BOOT_ENABLE)) {
			/* Choose this FCF record */
			FUNC5(phba, KERN_INFO, LOG_FIP,
					"2837 Update current FCF record "
					"(x%x) with new FCF record (x%x)\n",
					fcf_rec->fcf_indx,
					FUNC2(lpfc_fcf_record_fcf_index,
					new_fcf_record));
			FUNC1(phba, fcf_rec, new_fcf_record,
					addr_mode, vlan_id, BOOT_ENABLE);
			FUNC19(&phba->hbalock);
			goto read_next_fcf;
		}
		/*
		 * If the driver FCF record has boot flag set and the
		 * new hba FCF record does not have boot flag, read
		 * the next FCF record.
		 */
		if (!boot_flag && (fcf_rec->flag & BOOT_ENABLE)) {
			FUNC19(&phba->hbalock);
			goto read_next_fcf;
		}
		/*
		 * If the new hba FCF record has lower priority value
		 * than the driver FCF record, use the new record.
		 */
		if (new_fcf_record->fip_priority < fcf_rec->priority) {
			/* Choose the new FCF record with lower priority */
			FUNC5(phba, KERN_INFO, LOG_FIP,
					"2838 Update current FCF record "
					"(x%x) with new FCF record (x%x)\n",
					fcf_rec->fcf_indx,
					FUNC2(lpfc_fcf_record_fcf_index,
					       new_fcf_record));
			FUNC1(phba, fcf_rec, new_fcf_record,
					addr_mode, vlan_id, 0);
			/* Reset running random FCF selection count */
			phba->fcf.eligible_fcf_cnt = 1;
		} else if (new_fcf_record->fip_priority == fcf_rec->priority) {
			/* Update running random FCF selection count */
			phba->fcf.eligible_fcf_cnt++;
			select_new_fcf = FUNC14(phba,
						phba->fcf.eligible_fcf_cnt);
			if (select_new_fcf) {
				FUNC5(phba, KERN_INFO, LOG_FIP,
					"2839 Update current FCF record "
					"(x%x) with new FCF record (x%x)\n",
					fcf_rec->fcf_indx,
					FUNC2(lpfc_fcf_record_fcf_index,
					       new_fcf_record));
				/* Choose the new FCF by random selection */
				FUNC1(phba, fcf_rec,
							 new_fcf_record,
							 addr_mode, vlan_id, 0);
			}
		}
		FUNC19(&phba->hbalock);
		goto read_next_fcf;
	}
	/*
	 * This is the first suitable FCF record, choose this record for
	 * initial best-fit FCF.
	 */
	if (fcf_rec) {
		FUNC5(phba, KERN_INFO, LOG_FIP,
				"2840 Update initial FCF candidate "
				"with FCF (x%x)\n",
				FUNC2(lpfc_fcf_record_fcf_index,
				       new_fcf_record));
		FUNC1(phba, fcf_rec, new_fcf_record,
					 addr_mode, vlan_id, (boot_flag ?
					 BOOT_ENABLE : 0));
		phba->fcf.fcf_flag |= FCF_AVAILABLE;
		/* Setup initial running random FCF selection count */
		phba->fcf.eligible_fcf_cnt = 1;
	}
	FUNC19(&phba->hbalock);
	goto read_next_fcf;

read_next_fcf:
	FUNC13(phba, mboxq);
	if (next_fcf_index == LPFC_FCOE_FCF_NEXT_NONE || next_fcf_index == 0) {
		if (phba->fcf.fcf_flag & FCF_REDISC_FOV) {
			/*
			 * Case of FCF fast failover scan
			 */

			/*
			 * It has not found any suitable FCF record, cancel
			 * FCF scan inprogress, and do nothing
			 */
			if (!(phba->fcf.failover_rec.flag & RECORD_VALID)) {
				FUNC5(phba, KERN_WARNING, LOG_FIP,
					       "2782 No suitable FCF found: "
					       "(x%x/x%x)\n",
					       phba->fcoe_eventtag_at_fcf_scan,
					       FUNC2(lpfc_fcf_record_fcf_index,
						      new_fcf_record));
				FUNC18(&phba->hbalock);
				if (phba->hba_flag & HBA_DEVLOSS_TMO) {
					phba->hba_flag &= ~FCF_TS_INPROG;
					FUNC19(&phba->hbalock);
					/* Unregister in-use FCF and rescan */
					FUNC5(phba, KERN_INFO,
							LOG_FIP,
							"2864 On devloss tmo "
							"unreg in-use FCF and "
							"rescan FCF table\n");
					FUNC16(phba);
					return;
				}
				/*
				 * Let next new FCF event trigger fast failover
				 */
				phba->hba_flag &= ~FCF_TS_INPROG;
				FUNC19(&phba->hbalock);
				return;
			}
			/*
			 * It has found a suitable FCF record that is not
			 * the same as in-use FCF record, unregister the
			 * in-use FCF record, replace the in-use FCF record
			 * with the new FCF record, mark FCF fast failover
			 * completed, and then start register the new FCF
			 * record.
			 */

			/* Unregister the current in-use FCF record */
			FUNC15(phba);

			/* Replace in-use record with the new record */
			FUNC5(phba, KERN_INFO, LOG_FIP,
					"2842 Replace in-use FCF (x%x) "
					"with failover FCF (x%x)\n",
					phba->fcf.current_rec.fcf_indx,
					phba->fcf.failover_rec.fcf_indx);
			FUNC17(&phba->fcf.current_rec,
			       &phba->fcf.failover_rec,
			       sizeof(struct lpfc_fcf_rec));
			/*
			 * Mark the fast FCF failover rediscovery completed
			 * and the start of the first round of the roundrobin
			 * FCF failover.
			 */
			FUNC18(&phba->hbalock);
			phba->fcf.fcf_flag &= ~FCF_REDISC_FOV;
			FUNC19(&phba->hbalock);
			/* Register to the new FCF record */
			FUNC6(phba);
		} else {
			/*
			 * In case of transaction period to fast FCF failover,
			 * do nothing when search to the end of the FCF table.
			 */
			if ((phba->fcf.fcf_flag & FCF_REDISC_EVT) ||
			    (phba->fcf.fcf_flag & FCF_REDISC_PEND))
				return;

			if (phba->cfg_fcf_failover_policy == LPFC_FCF_FOV &&
				phba->fcf.fcf_flag & FCF_IN_USE) {
				/*
				 * In case the current in-use FCF record no
				 * longer existed during FCF discovery that
				 * was not triggered by fast FCF failover
				 * process, treat it as fast FCF failover.
				 */
				FUNC5(phba, KERN_INFO, LOG_FIP,
						"2841 In-use FCF record (x%x) "
						"not reported, entering fast "
						"FCF failover mode scanning.\n",
						phba->fcf.current_rec.fcf_indx);
				FUNC18(&phba->hbalock);
				phba->fcf.fcf_flag |= FCF_REDISC_FOV;
				FUNC19(&phba->hbalock);
				FUNC11(phba,
						LPFC_FCOE_FCF_GET_FIRST);
				return;
			}
			/* Register to the new FCF record */
			FUNC6(phba);
		}
	} else
		FUNC11(phba, next_fcf_index);
	return;

out:
	FUNC13(phba, mboxq);
	FUNC6(phba);

	return;
}