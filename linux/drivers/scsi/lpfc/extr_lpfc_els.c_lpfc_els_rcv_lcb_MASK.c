#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int lsRjtRsnCode; } ;
struct TYPE_12__ {int /*<<< orphan*/  lsRjtError; TYPE_5__ b; } ;
struct ls_rjt {TYPE_6__ un; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  vport; } ;
struct lpfc_lcb_context {scalar_t__ sub_command; int /*<<< orphan*/  ndlp; int /*<<< orphan*/  rx_id; int /*<<< orphan*/  ox_id; int /*<<< orphan*/  duration; int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; scalar_t__ capability; } ;
struct TYPE_8__ {int /*<<< orphan*/  ox_id; } ;
struct TYPE_9__ {TYPE_2__ rcvsli3; } ;
struct TYPE_10__ {int /*<<< orphan*/  ulpContext; TYPE_3__ unsli3; } ;
struct lpfc_iocbq {TYPE_4__ iocb; scalar_t__ context2; } ;
struct TYPE_7__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_lcb_request_frame {scalar_t__ lcb_sub_command; int /*<<< orphan*/  lcb_duration; int /*<<< orphan*/  lcb_frequency; int /*<<< orphan*/  lcb_type; int /*<<< orphan*/  lcb_command; } ;
typedef  int /*<<< orphan*/  stat ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HBA_FCOE_MODE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 scalar_t__ LPFC_LCB_OFF ; 
 scalar_t__ LPFC_LCB_ON ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int LSRJT_CMD_UNSUPPORTED ; 
 int LSRJT_UNABLE_TPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_lcb_context*) ; 
 struct lpfc_lcb_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (struct lpfc_vport*,struct lpfc_lcb_context*,int) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  FUNC9 (struct ls_rjt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
		 struct lpfc_nodelist *ndlp)
{
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_dmabuf *pcmd;
	uint8_t *lp;
	struct fc_lcb_request_frame *beacon;
	struct lpfc_lcb_context *lcb_context;
	uint8_t state, rjt_err;
	struct ls_rjt stat;

	pcmd = (struct lpfc_dmabuf *)cmdiocb->context2;
	lp = (uint8_t *)pcmd->virt;
	beacon = (struct fc_lcb_request_frame *)pcmd->virt;

	FUNC7(vport, KERN_INFO, LOG_ELS,
			"0192 ELS LCB Data x%x x%x x%x x%x sub x%x "
			"type x%x frequency %x duration x%x\n",
			lp[0], lp[1], lp[2],
			beacon->lcb_command,
			beacon->lcb_sub_command,
			beacon->lcb_type,
			beacon->lcb_frequency,
			FUNC0(beacon->lcb_duration));

	if (beacon->lcb_sub_command != LPFC_LCB_ON &&
	    beacon->lcb_sub_command != LPFC_LCB_OFF) {
		rjt_err = LSRJT_CMD_UNSUPPORTED;
		goto rjt;
	}

	if (phba->sli_rev < LPFC_SLI_REV4  ||
	    phba->hba_flag & HBA_FCOE_MODE ||
	    (FUNC1(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
	    LPFC_SLI_INTF_IF_TYPE_2)) {
		rjt_err = LSRJT_CMD_UNSUPPORTED;
		goto rjt;
	}

	lcb_context = FUNC3(sizeof(*lcb_context), GFP_KERNEL);
	if (!lcb_context) {
		rjt_err = LSRJT_UNABLE_TPC;
		goto rjt;
	}

	state = (beacon->lcb_sub_command == LPFC_LCB_ON) ? 1 : 0;
	lcb_context->sub_command = beacon->lcb_sub_command;
	lcb_context->capability	= 0;
	lcb_context->type = beacon->lcb_type;
	lcb_context->frequency = beacon->lcb_frequency;
	lcb_context->duration = beacon->lcb_duration;
	lcb_context->ox_id = cmdiocb->iocb.unsli3.rcvsli3.ox_id;
	lcb_context->rx_id = cmdiocb->iocb.ulpContext;
	lcb_context->ndlp = FUNC5(ndlp);
	if (FUNC8(vport, lcb_context, state)) {
		FUNC7(ndlp->vport, KERN_ERR,
				 LOG_ELS, "0193 failed to send mail box");
		FUNC2(lcb_context);
		FUNC6(ndlp);
		rjt_err = LSRJT_UNABLE_TPC;
		goto rjt;
	}
	return 0;
rjt:
	FUNC9(&stat, 0, sizeof(stat));
	stat.un.b.lsRjtRsnCode = rjt_err;
	FUNC4(vport, stat.un.lsRjtError, cmdiocb, ndlp, NULL);
	return 1;
}