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
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; TYPE_1__* lport; } ;
struct fc_host_attrs {scalar_t__ npiv_vports_inuse; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDF_LOG_NPIV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct fc_host_attrs* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qedf_ctx *qedf)
{
	struct fc_host_attrs *fc_host = FUNC2(qedf->lport->host);

	FUNC0(&(qedf->dbg_ctx), QEDF_LOG_NPIV,
	    "Entered.\n");
	while (fc_host->npiv_vports_inuse > 0) {
		FUNC0(&(qedf->dbg_ctx), QEDF_LOG_NPIV,
		    "Waiting for all vports to be reaped.\n");
		FUNC1(1000);
	}
}