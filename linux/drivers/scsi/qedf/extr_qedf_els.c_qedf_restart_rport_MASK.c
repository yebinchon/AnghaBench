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
typedef  struct qedf_rport* u32 ;
struct qedf_rport {int /*<<< orphan*/  flags; struct fc_rport_priv* rdata; TYPE_2__* qedf; int /*<<< orphan*/  rport_lock; } ;
struct TYPE_4__ {struct qedf_rport* port_id; } ;
struct fc_rport_priv {scalar_t__ rp_state; int /*<<< orphan*/  kref; TYPE_1__ ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_3__ disc; } ;
struct TYPE_5__ {int /*<<< orphan*/  dbg_ctx; struct fc_lport* lport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  QEDF_RPORT_IN_RESET ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 scalar_t__ RPORT_ST_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fc_rport_priv* FUNC2 (struct fc_lport*,struct qedf_rport*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct qedf_rport *fcport)
{
	struct fc_lport *lport;
	struct fc_rport_priv *rdata;
	u32 port_id;
	unsigned long flags;

	if (!fcport) {
		FUNC0(NULL, "fcport is NULL.\n");
		return;
	}

	FUNC10(&fcport->rport_lock, flags);
	if (FUNC12(QEDF_RPORT_IN_RESET, &fcport->flags) ||
	    !FUNC12(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
	    FUNC12(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
		FUNC0(&(fcport->qedf->dbg_ctx), "fcport %p already in reset or not offloaded.\n",
		    fcport);
		FUNC11(&fcport->rport_lock, flags);
		return;
	}

	/* Set that we are now in reset */
	FUNC9(QEDF_RPORT_IN_RESET, &fcport->flags);
	FUNC11(&fcport->rport_lock, flags);

	rdata = fcport->rdata;
	if (rdata && !FUNC5(&rdata->kref)) {
		fcport->rdata = NULL;
		rdata = NULL;
	}

	if (rdata && rdata->rp_state == RPORT_ST_READY) {
		lport = fcport->qedf->lport;
		port_id = rdata->ids.port_id;
		FUNC0(&(fcport->qedf->dbg_ctx),
		    "LOGO port_id=%x.\n", port_id);
		FUNC4(rdata);
		FUNC6(&rdata->kref, fc_rport_destroy);
		FUNC7(&lport->disc.disc_mutex);
		/* Recreate the rport and log back in */
		rdata = FUNC2(lport, port_id);
		if (rdata) {
			FUNC8(&lport->disc.disc_mutex);
			FUNC3(rdata);
			fcport->rdata = rdata;
		} else {
			FUNC8(&lport->disc.disc_mutex);
			fcport->rdata = NULL;
		}
	}
	FUNC1(QEDF_RPORT_IN_RESET, &fcport->flags);
}