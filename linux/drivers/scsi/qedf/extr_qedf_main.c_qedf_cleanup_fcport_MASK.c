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
struct qedf_rport {int /*<<< orphan*/ * qedf; struct fc_rport_priv* rdata; int /*<<< orphan*/  flags; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; TYPE_1__ ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDF_LOG_CONN ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qedf_rport*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qedf_ctx*,struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedf_ctx*,struct qedf_rport*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct qedf_ctx *qedf,
	struct qedf_rport *fcport)
{
	struct fc_rport_priv *rdata = fcport->rdata;

	FUNC0(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Cleaning up portid=%06x.\n",
	    fcport->rdata->ids.port_id);

	/* Flush any remaining i/o's before we upload the connection */
	FUNC2(fcport, -1);

	if (FUNC5(QEDF_RPORT_SESSION_READY, &fcport->flags))
		FUNC4(qedf, fcport);
	FUNC3(qedf, fcport);
	fcport->rdata = NULL;
	fcport->qedf = NULL;
	FUNC1(&rdata->kref, fc_rport_destroy);
}