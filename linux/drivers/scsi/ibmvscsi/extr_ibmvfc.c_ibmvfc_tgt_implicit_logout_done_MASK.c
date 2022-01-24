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
struct ibmvfc_target {scalar_t__ scsi_id; scalar_t__ new_scsi_id; int /*<<< orphan*/  kref; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct ibmvfc_implicit_logout {TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ action; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_3__ {struct ibmvfc_implicit_logout implicit_logout; } ;

/* Variables and functions */
 scalar_t__ IBMVFC_HOST_ACTION_QUERY_TGTS ; 
 scalar_t__ IBMVFC_HOST_ACTION_TGT_INIT ; 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_send_plogi ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_implicit_logout *rsp = &evt->xfer_iu->implicit_logout;
	u32 status = FUNC0(rsp->common.status);

	vhost->discovery_threads--;
	FUNC1(evt);
	FUNC3(tgt, IBMVFC_TGT_ACTION_NONE);

	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC5(tgt, "Implicit Logout succeeded\n");
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		FUNC4(&tgt->kref, ibmvfc_release_tgt);
		FUNC7(&vhost->work_wait_q);
		return;
	case IBMVFC_MAD_FAILED:
	default:
		FUNC6(tgt, "Implicit Logout failed: rc=0x%02X\n", status);
		break;
	}

	if (vhost->action == IBMVFC_HOST_ACTION_TGT_INIT)
		FUNC2(tgt, ibmvfc_tgt_send_plogi);
	else if (vhost->action == IBMVFC_HOST_ACTION_QUERY_TGTS &&
		 tgt->scsi_id != tgt->new_scsi_id)
		FUNC3(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
	FUNC4(&tgt->kref, ibmvfc_release_tgt);
	FUNC7(&vhost->work_wait_q);
}