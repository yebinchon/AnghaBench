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
struct qedf_ctx {int /*<<< orphan*/  link_update; int /*<<< orphan*/  link_update_wq; int /*<<< orphan*/  dbg_ctx; scalar_t__ vlan_id; int /*<<< orphan*/  link_state; int /*<<< orphan*/  cdev; int /*<<< orphan*/  num_offloads; } ;
struct qed_link_output {int /*<<< orphan*/  link_up; } ;
struct fc_lport {scalar_t__ vport; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_link ) (int /*<<< orphan*/ ,struct qed_link_output*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDF_LINK_DOWN ; 
 int /*<<< orphan*/  QEDF_LINK_UP ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct qedf_ctx* FUNC6 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_2__* qed_ops ; 
 int FUNC8 (struct qedf_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct qed_link_output*) ; 

void FUNC11(struct fc_lport *lport)
{
	struct qedf_ctx *qedf;
	struct qed_link_output if_link;

	if (lport->vport) {
		FUNC0(NULL, "Cannot issue host reset on NPIV port.\n");
		return;
	}

	qedf = FUNC6(lport);

	/* For host reset, essentially do a soft link up/down */
	FUNC4(&qedf->link_state, QEDF_LINK_DOWN);
	FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
		  "Queuing link down work.\n");
	FUNC9(qedf->link_update_wq, &qedf->link_update,
	    0);

	if (FUNC8(qedf) == false) {
		FUNC0(&qedf->dbg_ctx, "Could not upload all sessions.\n");
		FUNC2(FUNC3(&qedf->num_offloads));
	}

	/* Before setting link up query physical link state */
	qed_ops->common->get_link(qedf->cdev, &if_link);
	/* Bail if the physical link is not up */
	if (!if_link.link_up) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
			  "Physical link is not up.\n");
		return;
	}
	/* Flush and wait to make sure link down is processed */
	FUNC5(&qedf->link_update);
	FUNC7(500);

	FUNC4(&qedf->link_state, QEDF_LINK_UP);
	qedf->vlan_id  = 0;
	FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
		  "Queue link up work.\n");
	FUNC9(qedf->link_update_wq, &qedf->link_update,
	    0);
}