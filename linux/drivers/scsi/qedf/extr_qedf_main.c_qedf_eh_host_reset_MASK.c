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
struct scsi_cmnd {TYPE_1__* device; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  flags; int /*<<< orphan*/  link_state; } ;
struct fc_lport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ QEDF_LINK_DOWN ; 
 int /*<<< orphan*/  QEDF_UNLOADING ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct qedf_ctx* FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 struct fc_lport* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *sc_cmd)
{
	struct fc_lport *lport;
	struct qedf_ctx *qedf;

	lport = FUNC4(sc_cmd->device->host);
	qedf = FUNC2(lport);

	if (FUNC1(&qedf->link_state) == QEDF_LINK_DOWN ||
	    FUNC5(QEDF_UNLOADING, &qedf->flags))
		return FAILED;

	FUNC0(&(qedf->dbg_ctx), "HOST RESET Issued...");

	FUNC3(lport);

	return SUCCESS;
}