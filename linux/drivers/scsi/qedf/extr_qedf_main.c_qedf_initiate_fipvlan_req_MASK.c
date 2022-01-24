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
struct qedf_ctx {scalar_t__ fipvlan_retries; scalar_t__ vlan_id; int /*<<< orphan*/  fipvlan_compl; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  ctlr; int /*<<< orphan*/  link_state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ QEDF_LINK_DOWN ; 
 scalar_t__ QEDF_LINK_UP ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qedf_ctx*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC8(struct qedf_ctx *qedf)
{

	while (qedf->fipvlan_retries--) {
		/* This is to catch if link goes down during fipvlan retries */
		if (FUNC2(&qedf->link_state) == QEDF_LINK_DOWN) {
			FUNC0(&qedf->dbg_ctx, "Link not up.\n");
			return false;
		}

		if (FUNC6(QEDF_UNLOADING, &qedf->flags)) {
			FUNC0(&qedf->dbg_ctx, "Driver unloading.\n");
			return false;
		}

		if (qedf->vlan_id > 0) {
			FUNC1(&qedf->dbg_ctx, QEDF_LOG_DISC,
				  "vlan = 0x%x already set, calling ctlr_link_up.\n",
				  qedf->vlan_id);
			if (FUNC2(&qedf->link_state) == QEDF_LINK_UP)
				FUNC3(&qedf->ctlr);
			return true;
		}

		FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			   "Retry %d.\n", qedf->fipvlan_retries);
		FUNC4(&qedf->fipvlan_compl);
		FUNC5(qedf);
		FUNC7(&qedf->fipvlan_compl, 1 * HZ);
	}

	return false;
}