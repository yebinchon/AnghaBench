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
struct viosrp_crq {int dummy; } ;
struct srp_i_logout {int /*<<< orphan*/  tag; } ;
struct scsi_info {scalar_t__ debit; int /*<<< orphan*/  waiting_rsp; int /*<<< orphan*/  dev; int /*<<< orphan*/  schedule_q; } ;
struct mad_common {int dummy; } ;
struct iu_entry {int dummy; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  tag; int /*<<< orphan*/  format; } ;
struct ibmvscsis_cmd {int /*<<< orphan*/  list; TYPE_2__ rsp; struct iu_entry* iue; } ;
struct TYPE_4__ {struct srp_i_logout i_logout; } ;
struct TYPE_6__ {TYPE_1__ srp; } ;

/* Variables and functions */
 long ADAPT_SUCCESS ; 
 int /*<<< orphan*/  ERR_DISCONNECT ; 
 int /*<<< orphan*/  SRP_FORMAT ; 
 int /*<<< orphan*/  WAIT_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (struct iu_entry*) ; 

__attribute__((used)) static long FUNC6(struct scsi_info *vscsi,
				   struct ibmvscsis_cmd *cmd,
				   struct viosrp_crq *crq)
{
	struct iu_entry *iue = cmd->iue;
	struct srp_i_logout *log_out = &FUNC5(iue)->srp.i_logout;
	long rc = ADAPT_SUCCESS;

	if ((vscsi->debit > 0) || !FUNC4(&vscsi->schedule_q) ||
	    !FUNC4(&vscsi->waiting_rsp)) {
		FUNC0(&vscsi->dev, "i_logout: outstanding work\n");
		FUNC1(vscsi, ERR_DISCONNECT, 0);
	} else {
		cmd->rsp.format = SRP_FORMAT;
		cmd->rsp.tag = log_out->tag;
		cmd->rsp.len = sizeof(struct mad_common);
		FUNC3(&cmd->list, &vscsi->waiting_rsp);
		FUNC2(vscsi);

		FUNC1(vscsi, WAIT_IDLE, 0);
	}

	return rc;
}