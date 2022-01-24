#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  roles; } ;
struct ibmvfc_target {int add_rport; int /*<<< orphan*/  kref; int /*<<< orphan*/  logo_rcvd; TYPE_3__ ids; int /*<<< orphan*/  need_login; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct ibmvfc_prli_svc_parms {int /*<<< orphan*/  service_parms; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct ibmvfc_process_login {int /*<<< orphan*/  error; int /*<<< orphan*/  status; TYPE_2__ common; struct ibmvfc_prli_svc_parms parms; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_8__ {int /*<<< orphan*/  retry; int /*<<< orphan*/  logged_in; } ;
struct TYPE_5__ {struct ibmvfc_process_login prli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_PORT_ROLE_FCP_INITIATOR ; 
 int /*<<< orphan*/  FC_PORT_ROLE_FCP_TARGET ; 
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
#define  IBMVFC_MAD_CRQ_ERROR 131 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int IBMVFC_PLOGI_REQUIRED ; 
 int IBMVFC_PRLI_EST_IMG_PAIR ; 
 int IBMVFC_PRLI_INITIATOR_FUNC ; 
 int IBMVFC_PRLI_TARGET_FUNC ; 
 int /*<<< orphan*/  IBMVFC_SCSI_FCP_TYPE ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int IBMVFC_VIOS_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_send_plogi ; 
 int /*<<< orphan*/  ibmvfc_tgt_send_prli ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* prli_rsp ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_process_login *rsp = &evt->xfer_iu->prli;
	struct ibmvfc_prli_svc_parms *parms = &rsp->parms;
	u32 status = FUNC0(rsp->common.status);
	int index, level = IBMVFC_DEFAULT_LOG_LEVEL;

	vhost->discovery_threads--;
	FUNC7(tgt, IBMVFC_TGT_ACTION_NONE);
	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC9(tgt, "Process Login succeeded: %X %02X %04X\n",
			parms->type, parms->flags, parms->service_parms);

		if (parms->type == IBMVFC_SCSI_FCP_TYPE) {
			index = FUNC4(FUNC0(parms->flags));
			if (prli_rsp[index].logged_in) {
				if (FUNC0(parms->flags) & IBMVFC_PRLI_EST_IMG_PAIR) {
					tgt->need_login = 0;
					tgt->ids.roles = 0;
					if (FUNC1(parms->service_parms) & IBMVFC_PRLI_TARGET_FUNC)
						tgt->ids.roles |= FC_PORT_ROLE_FCP_TARGET;
					if (FUNC1(parms->service_parms) & IBMVFC_PRLI_INITIATOR_FUNC)
						tgt->ids.roles |= FC_PORT_ROLE_FCP_INITIATOR;
					tgt->add_rport = 1;
				} else
					FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
			} else if (prli_rsp[index].retry)
				FUNC6(tgt, ibmvfc_tgt_send_prli);
			else
				FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		} else
			FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_CRQ_ERROR:
		FUNC6(tgt, ibmvfc_tgt_send_prli);
		break;
	case IBMVFC_MAD_FAILED:
	default:
		if ((FUNC0(rsp->status) & IBMVFC_VIOS_FAILURE) &&
		     FUNC0(rsp->error) == IBMVFC_PLOGI_REQUIRED)
			level += FUNC6(tgt, ibmvfc_tgt_send_plogi);
		else if (tgt->logo_rcvd)
			level += FUNC6(tgt, ibmvfc_tgt_send_plogi);
		else if (FUNC5(FUNC0(rsp->status), FUNC0(rsp->error)))
			level += FUNC6(tgt, ibmvfc_tgt_send_prli);
		else
			FUNC7(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

		FUNC10(tgt, level, "Process Login failed: %s (%x:%x) rc=0x%02X\n",
			FUNC3(FUNC0(rsp->status), FUNC0(rsp->error)),
			FUNC0(rsp->status), FUNC0(rsp->error), status);
		break;
	}

	FUNC8(&tgt->kref, ibmvfc_release_tgt);
	FUNC2(evt);
	FUNC11(&vhost->work_wait_q);
}