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
struct qedf_ctx {int /*<<< orphan*/  flags; } ;
struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {scalar_t__ state; scalar_t__ host; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  list; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ LPORT_ST_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct qedf_ctx* FUNC7 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fc_lport* FUNC13 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC14 (struct fc_vport*) ; 

__attribute__((used)) static int FUNC15(struct fc_vport *vport)
{
	struct Scsi_Host *shost = FUNC14(vport);
	struct fc_lport *n_port = FUNC13(shost);
	struct fc_lport *vn_port = vport->dd_data;
	struct qedf_ctx *qedf = FUNC7(vn_port);

	if (!qedf) {
		FUNC0(NULL, "qedf is NULL.\n");
		goto out;
	}

	/* Set unloading bit on vport qedf_ctx to prevent more I/O */
	FUNC12(QEDF_UNLOADING, &qedf->flags);

	FUNC8(&n_port->lp_mutex);
	FUNC6(&vn_port->list);
	FUNC9(&n_port->lp_mutex);

	FUNC2(vn_port);
	FUNC3(vn_port);

	/* Detach from scsi-ml */
	FUNC5(vn_port->host);
	FUNC11(vn_port->host);

	/*
	 * Only try to release the exchange manager if the vn_port
	 * configuration is complete.
	 */
	if (vn_port->state == LPORT_ST_READY)
		FUNC1(vn_port);

	/* Free memory used by statistical counters */
	FUNC4(vn_port);

	/* Release Scsi_Host */
	if (vn_port->host)
		FUNC10(vn_port->host);

out:
	return 0;
}