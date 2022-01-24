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
typedef  int u8 ;
typedef  int u32 ;
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  timer; } ;
struct TYPE_8__ {int /*<<< orphan*/  error; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int /*<<< orphan*/ * response; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct ibmvfc_passthru_mad {TYPE_4__ iu; TYPE_3__ fc_iu; TYPE_2__ common; } ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  discovery_threads; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; struct ibmvfc_target* tgt; } ;
struct TYPE_5__ {struct ibmvfc_passthru_mad passthru; } ;

/* Variables and functions */
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_passthru_mad*,struct ibmvfc_target*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvfc_target*,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ibmvfc_event *evt)
{
	struct ibmvfc_target *tgt = evt->tgt;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_passthru_mad *mad = &evt->xfer_iu->passthru;
	u32 status = FUNC0(mad->common.status);
	u8 fc_reason, fc_explain;

	vhost->discovery_threads--;
	FUNC8(tgt, IBMVFC_TGT_ACTION_NONE);
	FUNC2(&tgt->timer);

	switch (status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC10(tgt, "ADISC succeeded\n");
		if (FUNC3(mad, tgt))
			FUNC8(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	case IBMVFC_MAD_FAILED:
	default:
		FUNC8(tgt, IBMVFC_TGT_ACTION_DEL_RPORT);
		fc_reason = (FUNC1(mad->fc_iu.response[1]) & 0x00ff0000) >> 16;
		fc_explain = (FUNC1(mad->fc_iu.response[1]) & 0x0000ff00) >> 8;
		FUNC11(tgt, "ADISC failed: %s (%x:%x) %s (%x) %s (%x) rc=0x%02X\n",
			 FUNC5(FUNC0(mad->iu.status), FUNC0(mad->iu.error)),
			 FUNC0(mad->iu.status), FUNC0(mad->iu.error),
			 FUNC6(fc_reason), fc_reason,
			 FUNC7(fc_explain), fc_explain, status);
		break;
	}

	FUNC9(&tgt->kref, ibmvfc_release_tgt);
	FUNC4(evt);
	FUNC12(&vhost->work_wait_q);
}