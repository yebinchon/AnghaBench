#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qedf_ctx {int /*<<< orphan*/  flogi_compl; int /*<<< orphan*/  dbg_ctx; struct fc_lport* lport; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {int /*<<< orphan*/  r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ELS_FLOGI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FC_FID_FLOGI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDF_LOG_ELS ; 
 struct fc_frame* FUNC2 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qedf_flogi_resp ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int /*<<< orphan*/ ) ; 

int FUNC5(struct qedf_ctx *qedf)
{
	struct fc_lport *lport;
	struct fc_frame *fp;

	lport = qedf->lport;

	if (!lport->tt.elsct_send) {
		FUNC0(&qedf->dbg_ctx, "tt.elsct_send not set.\n");
		return -EINVAL;
	}

	fp = FUNC2(lport, sizeof(struct fc_els_flogi));
	if (!fp) {
		FUNC0(&(qedf->dbg_ctx), "fc_frame_alloc failed.\n");
		return -ENOMEM;
	}

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_ELS,
	    "Sending FLOGI to reestablish session with switch.\n");
	lport->tt.elsct_send(lport, FC_FID_FLOGI, fp,
	    ELS_FLOGI, qedf_flogi_resp, lport, lport->r_a_tov);

	FUNC3(&qedf->flogi_compl);

	return 0;
}