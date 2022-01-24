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
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_5__ {int fcf_indx; } ;
struct TYPE_6__ {int fcf_flag; int fcf_redisc_attempted; TYPE_2__ current_rec; } ;
struct lpfc_hba {int hba_flag; TYPE_3__ fcf; TYPE_1__* pport; int /*<<< orphan*/  hbalock; } ;
struct TYPE_4__ {int port_state; } ;

/* Variables and functions */
 int FCF_AVAILABLE ; 
 int FCF_RR_INPROG ; 
 int FCF_SCAN_DONE ; 
 int HBA_DEVLOSS_TMO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_ELS ; 
 int LOG_FIP ; 
 int /*<<< orphan*/  LPFC_FCOE_FCF_NEXT_NONE ; 
 int LPFC_VPORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct lpfc_vport *vport, uint16_t fcf_index)
{
	struct lpfc_hba *phba = vport->phba;
	int rc;

	if (fcf_index == LPFC_FCOE_FCF_NEXT_NONE) {
		FUNC7(&phba->hbalock);
		if (phba->hba_flag & HBA_DEVLOSS_TMO) {
			FUNC8(&phba->hbalock);
			FUNC1(phba, KERN_INFO, LOG_FIP,
					"2872 Devloss tmo with no eligible "
					"FCF, unregister in-use FCF (x%x) "
					"and rescan FCF table\n",
					phba->fcf.current_rec.fcf_indx);
			FUNC6(phba);
			goto stop_flogi_current_fcf;
		}
		/* Mark the end to FLOGI roundrobin failover */
		phba->hba_flag &= ~FCF_RR_INPROG;
		/* Allow action to new fcf asynchronous event */
		phba->fcf.fcf_flag &= ~(FCF_AVAILABLE | FCF_SCAN_DONE);
		FUNC8(&phba->hbalock);
		FUNC1(phba, KERN_INFO, LOG_FIP,
				"2865 No FCF available, stop roundrobin FCF "
				"failover and change port state:x%x/x%x\n",
				phba->pport->port_state, LPFC_VPORT_UNKNOWN);
		phba->pport->port_state = LPFC_VPORT_UNKNOWN;

		if (!phba->fcf.fcf_redisc_attempted) {
			FUNC5(phba);

			rc = FUNC4(phba);
			if (!rc) {
				FUNC1(phba, KERN_INFO, LOG_FIP,
						"3195 Rediscover FCF table\n");
				phba->fcf.fcf_redisc_attempted = 1;
				FUNC2(phba);
			} else {
				FUNC1(phba, KERN_WARNING, LOG_FIP,
						"3196 Rediscover FCF table "
						"failed. Status:x%x\n", rc);
			}
		} else {
			FUNC1(phba, KERN_WARNING, LOG_FIP,
					"3197 Already rediscover FCF table "
					"attempted. No more retry\n");
		}
		goto stop_flogi_current_fcf;
	} else {
		FUNC1(phba, KERN_INFO, LOG_FIP | LOG_ELS,
				"2794 Try FLOGI roundrobin FCF failover to "
				"(x%x)\n", fcf_index);
		rc = FUNC3(phba, fcf_index);
		if (rc)
			FUNC1(phba, KERN_WARNING, LOG_FIP | LOG_ELS,
					"2761 FLOGI roundrobin FCF failover "
					"failed (rc:x%x) to read FCF (x%x)\n",
					rc, phba->fcf.current_rec.fcf_indx);
		else
			goto stop_flogi_current_fcf;
	}
	return 0;

stop_flogi_current_fcf:
	FUNC0(vport);
	return 1;
}