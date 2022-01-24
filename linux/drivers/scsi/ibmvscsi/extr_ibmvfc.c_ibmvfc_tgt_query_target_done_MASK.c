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
typedef  int u32 ;
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; int /*<<< orphan*/  new_scsi_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct ibmvfc_query_tgt {int /*<<< orphan*/  fc_explain; int /*<<< orphan*/  fc_type; int /*<<< orphan*/  error; int /*<<< orphan*/  status; int /*<<< orphan*/  scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_3__ {struct ibmvfc_query_tgt query_tgt; } ;

/* Variables and functions */
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
 int IBMVFC_FABRIC_MAPPED ; 
#define  IBMVFC_MAD_CRQ_ERROR 131 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int IBMVFC_PORT_NAME_NOT_REG ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int IBMVFC_UNABLE_TO_PERFORM_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_adisc ; 
 int /*<<< orphan*/  ibmvfc_tgt_implicit_logout ; 
 int /*<<< orphan*/  ibmvfc_tgt_query_target ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ibmvfc_target*,int,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_query_tgt *rsp = &evt->xfer_iu->query_tgt;
	u32 status = FUNC0(rsp->common.status);
	int level = IBMVFC_DEFAULT_LOG_LEVEL;

	vhost->discovery_threads--;
	FUNC9(tgt, IBMVFC_TGT_ACTION_NONE);
	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC11(tgt, "Query Target succeeded\n");
		tgt->new_scsi_id = FUNC1(rsp->scsi_id);
		if (FUNC1(rsp->scsi_id) != tgt->scsi_id)
			FUNC6(tgt, ibmvfc_tgt_implicit_logout);
		else
			FUNC6(tgt, ibmvfc_tgt_adisc);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_CRQ_ERROR:
		FUNC8(tgt, ibmvfc_tgt_query_target);
		break;
	case IBMVFC_MAD_FAILED:
	default:
		if ((FUNC0(rsp->status) & IBMVFC_FABRIC_MAPPED) == IBMVFC_FABRIC_MAPPED &&
		    FUNC0(rsp->error) == IBMVFC_UNABLE_TO_PERFORM_REQ &&
		    FUNC0(rsp->fc_explain) == IBMVFC_PORT_NAME_NOT_REG)
			FUNC9(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		else if (FUNC7(FUNC0(rsp->status), FUNC0(rsp->error)))
			level += FUNC8(tgt, ibmvfc_tgt_query_target);
		else
			FUNC9(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);

		FUNC12(tgt, level, "Query Target failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
			FUNC3(FUNC0(rsp->status), FUNC0(rsp->error)),
			FUNC0(rsp->status), FUNC0(rsp->error),
			FUNC4(FUNC0(rsp->fc_type)), FUNC0(rsp->fc_type),
			FUNC5(FUNC0(rsp->fc_explain)), FUNC0(rsp->fc_explain),
			status);
		break;
	}

	FUNC10(&tgt->kref, ibmvfc_release_tgt);
	FUNC2(evt);
	FUNC13(&vhost->work_wait_q);
}