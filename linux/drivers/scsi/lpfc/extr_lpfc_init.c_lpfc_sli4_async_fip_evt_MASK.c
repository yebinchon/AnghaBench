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
typedef  int uint8_t ;
struct lpfc_vport {int fc_flag; int load_flag; int /*<<< orphan*/  port_state; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_last_elscmd; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_delayfunc; } ;
struct TYPE_3__ {int fcf_indx; } ;
struct TYPE_4__ {int fcf_flag; TYPE_1__ current_rec; } ;
struct lpfc_hba {int fc_eventTag; int fcoe_eventtag; int hba_flag; int fcoe_cvl_eventtag; int max_vports; int /*<<< orphan*/  hbalock; TYPE_2__ fcf; } ;
struct lpfc_acqe_fip {int event_tag; int index; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_FDISC ; 
 int FCF_ACVL_DISC ; 
 int FCF_DEAD_DISC ; 
 int FCF_DISCOVERY ; 
 int FCF_REDISC_EVT ; 
 int FCF_REDISC_PEND ; 
 int FCF_SCAN_DONE ; 
 int FCF_TS_INPROG ; 
 int FC_UNLOADING ; 
 int FC_VPORT_CVL_RCVD ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_DISCOVERY ; 
 int LOG_FIP ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  LPFC_FCOE_FCF_GET_FIRST ; 
 int /*<<< orphan*/  LPFC_FDISC ; 
#define  LPFC_FIP_EVENT_TYPE_CVL 132 
#define  LPFC_FIP_EVENT_TYPE_FCF_DEAD 131 
#define  LPFC_FIP_EVENT_TYPE_FCF_PARAM_MOD 130 
#define  LPFC_FIP_EVENT_TYPE_FCF_TABLE_FULL 129 
#define  LPFC_FIP_EVENT_TYPE_NEW_FCF 128 
 int /*<<< orphan*/  NLP_DELAY_TMO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_acqe_fip*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lpfc_acqe_fip_fcf_count ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_vport**) ; 
 struct lpfc_vport* FUNC3 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int) ; 
 int FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 struct lpfc_nodelist* FUNC12 (struct lpfc_vport*) ; 
 int FUNC13 (struct lpfc_hba*,int) ; 
 int FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_trailer_type ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct lpfc_hba *phba,
			struct lpfc_acqe_fip *acqe_fip)
{
	uint8_t event_type = FUNC0(lpfc_trailer_type, acqe_fip);
	int rc;
	struct lpfc_vport *vport;
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host  *shost;
	int active_vlink_present;
	struct lpfc_vport **vports;
	int i;

	phba->fc_eventTag = acqe_fip->event_tag;
	phba->fcoe_eventtag = acqe_fip->event_tag;
	switch (event_type) {
	case LPFC_FIP_EVENT_TYPE_NEW_FCF:
	case LPFC_FIP_EVENT_TYPE_FCF_PARAM_MOD:
		if (event_type == LPFC_FIP_EVENT_TYPE_NEW_FCF)
			FUNC4(phba, KERN_ERR, LOG_FIP |
					LOG_DISCOVERY,
					"2546 New FCF event, evt_tag:x%x, "
					"index:x%x\n",
					acqe_fip->event_tag,
					acqe_fip->index);
		else
			FUNC4(phba, KERN_WARNING, LOG_FIP |
					LOG_DISCOVERY,
					"2788 FCF param modified event, "
					"evt_tag:x%x, index:x%x\n",
					acqe_fip->event_tag,
					acqe_fip->index);
		if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
			/*
			 * During period of FCF discovery, read the FCF
			 * table record indexed by the event to update
			 * FCF roundrobin failover eligible FCF bmask.
			 */
			FUNC4(phba, KERN_INFO, LOG_FIP |
					LOG_DISCOVERY,
					"2779 Read FCF (x%x) for updating "
					"roundrobin FCF failover bmask\n",
					acqe_fip->index);
			rc = FUNC13(phba, acqe_fip->index);
		}

		/* If the FCF discovery is in progress, do nothing. */
		FUNC17(&phba->hbalock);
		if (phba->hba_flag & FCF_TS_INPROG) {
			FUNC18(&phba->hbalock);
			break;
		}
		/* If fast FCF failover rescan event is pending, do nothing */
		if (phba->fcf.fcf_flag & (FCF_REDISC_EVT | FCF_REDISC_PEND)) {
			FUNC18(&phba->hbalock);
			break;
		}

		/* If the FCF has been in discovered state, do nothing. */
		if (phba->fcf.fcf_flag & FCF_SCAN_DONE) {
			FUNC18(&phba->hbalock);
			break;
		}
		FUNC18(&phba->hbalock);

		/* Otherwise, scan the entire FCF table and re-discover SAN */
		FUNC4(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
				"2770 Start FCF table scan per async FCF "
				"event, evt_tag:x%x, index:x%x\n",
				acqe_fip->event_tag, acqe_fip->index);
		rc = FUNC10(phba,
						     LPFC_FCOE_FCF_GET_FIRST);
		if (rc)
			FUNC4(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
					"2547 Issue FCF scan read FCF mailbox "
					"command failed (x%x)\n", rc);
		break;

	case LPFC_FIP_EVENT_TYPE_FCF_TABLE_FULL:
		FUNC4(phba, KERN_ERR, LOG_SLI,
			"2548 FCF Table full count 0x%x tag 0x%x\n",
			FUNC0(lpfc_acqe_fip_fcf_count, acqe_fip),
			acqe_fip->event_tag);
		break;

	case LPFC_FIP_EVENT_TYPE_FCF_DEAD:
		phba->fcoe_cvl_eventtag = acqe_fip->event_tag;
		FUNC4(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
			"2549 FCF (x%x) disconnected from network, "
			"tag:x%x\n", acqe_fip->index, acqe_fip->event_tag);
		/*
		 * If we are in the middle of FCF failover process, clear
		 * the corresponding FCF bit in the roundrobin bitmap.
		 */
		FUNC17(&phba->hbalock);
		if ((phba->fcf.fcf_flag & FCF_DISCOVERY) &&
		    (phba->fcf.current_rec.fcf_indx != acqe_fip->index)) {
			FUNC18(&phba->hbalock);
			/* Update FLOGI FCF failover eligible FCF bmask */
			FUNC9(phba, acqe_fip->index);
			break;
		}
		FUNC18(&phba->hbalock);

		/* If the event is not for currently used fcf do nothing */
		if (phba->fcf.current_rec.fcf_indx != acqe_fip->index)
			break;

		/*
		 * Otherwise, request the port to rediscover the entire FCF
		 * table for a fast recovery from case that the current FCF
		 * is no longer valid as we are not in the middle of FCF
		 * failover process already.
		 */
		FUNC17(&phba->hbalock);
		/* Mark the fast failover process in progress */
		phba->fcf.fcf_flag |= FCF_DEAD_DISC;
		FUNC18(&phba->hbalock);

		FUNC4(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
				"2771 Start FCF fast failover process due to "
				"FCF DEAD event: evt_tag:x%x, fcf_index:x%x "
				"\n", acqe_fip->event_tag, acqe_fip->index);
		rc = FUNC14(phba);
		if (rc) {
			FUNC4(phba, KERN_ERR, LOG_FIP |
					LOG_DISCOVERY,
					"2772 Issue FCF rediscover mailbox "
					"command failed, fail through to FCF "
					"dead event\n");
			FUNC17(&phba->hbalock);
			phba->fcf.fcf_flag &= ~FCF_DEAD_DISC;
			FUNC18(&phba->hbalock);
			/*
			 * Last resort will fail over by treating this
			 * as a link down to FCF registration.
			 */
			FUNC8(phba);
		} else {
			/* Reset FCF roundrobin bmask for new discovery */
			FUNC7(phba);
			/*
			 * Handling fast FCF failover to a DEAD FCF event is
			 * considered equalivant to receiving CVL to all vports.
			 */
			FUNC11(phba);
		}
		break;
	case LPFC_FIP_EVENT_TYPE_CVL:
		phba->fcoe_cvl_eventtag = acqe_fip->event_tag;
		FUNC4(phba, KERN_ERR, LOG_FIP | LOG_DISCOVERY,
			"2718 Clear Virtual Link Received for VPI 0x%x"
			" tag 0x%x\n", acqe_fip->index, acqe_fip->event_tag);

		vport = FUNC3(phba,
						acqe_fip->index);
		ndlp = FUNC12(vport);
		if (!ndlp)
			break;
		active_vlink_present = 0;

		vports = FUNC1(phba);
		if (vports) {
			for (i = 0; i <= phba->max_vports && vports[i] != NULL;
					i++) {
				if ((!(vports[i]->fc_flag &
					FC_VPORT_CVL_RCVD)) &&
					(vports[i]->port_state > LPFC_FDISC)) {
					active_vlink_present = 1;
					break;
				}
			}
			FUNC2(phba, vports);
		}

		/*
		 * Don't re-instantiate if vport is marked for deletion.
		 * If we are here first then vport_delete is going to wait
		 * for discovery to complete.
		 */
		if (!(vport->load_flag & FC_UNLOADING) &&
					active_vlink_present) {
			/*
			 * If there are other active VLinks present,
			 * re-instantiate the Vlink using FDISC.
			 */
			FUNC15(&ndlp->nlp_delayfunc,
				  jiffies + FUNC16(1000));
			shost = FUNC6(vport);
			FUNC17(shost->host_lock);
			ndlp->nlp_flag |= NLP_DELAY_TMO;
			FUNC18(shost->host_lock);
			ndlp->nlp_last_elscmd = ELS_CMD_FDISC;
			vport->port_state = LPFC_FDISC;
		} else {
			/*
			 * Otherwise, we request port to rediscover
			 * the entire FCF table for a fast recovery
			 * from possible case that the current FCF
			 * is no longer valid if we are not already
			 * in the FCF failover process.
			 */
			FUNC17(&phba->hbalock);
			if (phba->fcf.fcf_flag & FCF_DISCOVERY) {
				FUNC18(&phba->hbalock);
				break;
			}
			/* Mark the fast failover process in progress */
			phba->fcf.fcf_flag |= FCF_ACVL_DISC;
			FUNC18(&phba->hbalock);
			FUNC4(phba, KERN_INFO, LOG_FIP |
					LOG_DISCOVERY,
					"2773 Start FCF failover per CVL, "
					"evt_tag:x%x\n", acqe_fip->event_tag);
			rc = FUNC14(phba);
			if (rc) {
				FUNC4(phba, KERN_ERR, LOG_FIP |
						LOG_DISCOVERY,
						"2774 Issue FCF rediscover "
						"mailbox command failed, "
						"through to CVL event\n");
				FUNC17(&phba->hbalock);
				phba->fcf.fcf_flag &= ~FCF_ACVL_DISC;
				FUNC18(&phba->hbalock);
				/*
				 * Last resort will be re-try on the
				 * the current registered FCF entry.
				 */
				FUNC5(phba);
			} else
				/*
				 * Reset FCF roundrobin bmask for new
				 * discovery.
				 */
				FUNC7(phba);
		}
		break;
	default:
		FUNC4(phba, KERN_ERR, LOG_SLI,
			"0288 Unknown FCoE event type 0x%x event tag "
			"0x%x\n", event_type, acqe_fip->event_tag);
		break;
	}
}