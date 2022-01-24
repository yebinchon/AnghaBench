#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qedf_ctx {int /*<<< orphan*/  link_update; int /*<<< orphan*/  link_update_wq; scalar_t__ vlan_id; int /*<<< orphan*/  link_down_tmo_valid; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  dcbx; int /*<<< orphan*/  link_state; int /*<<< orphan*/  link_recovery; int /*<<< orphan*/  flags; } ;
struct qed_link_output {int speed; scalar_t__ link_up; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ QEDF_DCBX_DONE ; 
 int QEDF_DCBX_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int QEDF_LINK_DOWN ; 
 scalar_t__ QEDF_LINK_UP ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ qedf_dcbx_no_wait ; 
 int qedf_link_down_tmo ; 
 int /*<<< orphan*/  FUNC5 (struct qedf_ctx*,struct qed_link_output*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *dev, struct qed_link_output *link)
{
	struct qedf_ctx *qedf = (struct qedf_ctx *)dev;

	/*
	 * Prevent race where we're removing the module and we get link update
	 * for qed.
	 */
	if (FUNC7(QEDF_UNLOADING, &qedf->flags)) {
		FUNC0(&qedf->dbg_ctx,
			 "Ignore link update, driver getting unload.\n");
		return;
	}

	if (link->link_up) {
		if (FUNC2(&qedf->link_state) == QEDF_LINK_UP) {
			FUNC1((&qedf->dbg_ctx), QEDF_LOG_DISC,
			    "Ignoring link up event as link is already up.\n");
			return;
		}
		FUNC0(&(qedf->dbg_ctx), "LINK UP (%d GB/s).\n",
		    link->speed / 1000);

		/* Cancel any pending link down work */
		FUNC4(&qedf->link_update);

		FUNC3(&qedf->link_state, QEDF_LINK_UP);
		FUNC5(qedf, link);

		if (FUNC2(&qedf->dcbx) == QEDF_DCBX_DONE ||
		    qedf_dcbx_no_wait) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			     "DCBx done.\n");
			if (FUNC2(&qedf->link_down_tmo_valid) > 0)
				FUNC6(qedf->link_update_wq,
				    &qedf->link_recovery, 0);
			else
				FUNC6(qedf->link_update_wq,
				    &qedf->link_update, 0);
			FUNC3(&qedf->link_down_tmo_valid, 0);
		}

	} else {
		FUNC0(&(qedf->dbg_ctx), "LINK DOWN.\n");

		FUNC3(&qedf->link_state, QEDF_LINK_DOWN);
		FUNC3(&qedf->dcbx, QEDF_DCBX_PENDING);
		/*
		 * Flag that we're waiting for the link to come back up before
		 * informing the fcoe layer of the event.
		 */
		if (qedf_link_down_tmo > 0) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "Starting link down tmo.\n");
			FUNC3(&qedf->link_down_tmo_valid, 1);
		}
		qedf->vlan_id = 0;
		FUNC5(qedf, link);
		FUNC6(qedf->link_update_wq, &qedf->link_update,
		    qedf_link_down_tmo * HZ);
	}
}