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
struct TYPE_4__ {int /*<<< orphan*/  bb_rcv_sz; } ;
struct TYPE_5__ {int /*<<< orphan*/ * class3_parms; int /*<<< orphan*/ * class2_parms; int /*<<< orphan*/ * class1_parms; TYPE_1__ common; } ;
struct ibmvfc_target {scalar_t__ action; TYPE_2__ service_parms; int /*<<< orphan*/  target_id; struct fc_rport* rport; int /*<<< orphan*/  kref; int /*<<< orphan*/  timer; int /*<<< orphan*/  queue; int /*<<< orphan*/  ids; struct ibmvfc_host* vhost; } ;
struct ibmvfc_host {TYPE_3__* host; } ;
struct fc_rport {int maxframe_size; scalar_t__ rqst_q; int /*<<< orphan*/  supported_classes; int /*<<< orphan*/  scsi_target_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_COS_CLASS1 ; 
 int /*<<< orphan*/  FC_COS_CLASS2 ; 
 int /*<<< orphan*/  FC_COS_CLASS3 ; 
 scalar_t__ IBMVFC_TGT_ACTION_DELETED_RPORT ; 
 scalar_t__ IBMVFC_TGT_ACTION_DEL_RPORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fc_rport* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport*) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC12(struct ibmvfc_target *tgt)
{
	struct ibmvfc_host *vhost = tgt->vhost;
	struct fc_rport *rport;
	unsigned long flags;

	FUNC11(tgt, "Adding rport\n");
	rport = FUNC4(vhost->host, 0, &tgt->ids);
	FUNC9(vhost->host->host_lock, flags);

	if (rport && tgt->action == IBMVFC_TGT_ACTION_DEL_RPORT) {
		FUNC11(tgt, "Deleting rport\n");
		FUNC8(&tgt->queue);
		FUNC6(tgt, IBMVFC_TGT_ACTION_DELETED_RPORT);
		FUNC10(vhost->host->host_lock, flags);
		FUNC5(rport);
		FUNC3(&tgt->timer);
		FUNC7(&tgt->kref, ibmvfc_release_tgt);
		return;
	} else if (rport && tgt->action == IBMVFC_TGT_ACTION_DELETED_RPORT) {
		FUNC10(vhost->host->host_lock, flags);
		return;
	}

	if (rport) {
		FUNC11(tgt, "rport add succeeded\n");
		tgt->rport = rport;
		rport->maxframe_size = FUNC0(tgt->service_parms.common.bb_rcv_sz) & 0x0fff;
		rport->supported_classes = 0;
		tgt->target_id = rport->scsi_target_id;
		if (FUNC1(tgt->service_parms.class1_parms[0]) & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS1;
		if (FUNC1(tgt->service_parms.class2_parms[0]) & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS2;
		if (FUNC1(tgt->service_parms.class3_parms[0]) & 0x80000000)
			rport->supported_classes |= FC_COS_CLASS3;
		if (rport->rqst_q)
			FUNC2(rport->rqst_q, 1);
	} else
		FUNC11(tgt, "rport add failed\n");
	FUNC10(vhost->host->host_lock, flags);
}