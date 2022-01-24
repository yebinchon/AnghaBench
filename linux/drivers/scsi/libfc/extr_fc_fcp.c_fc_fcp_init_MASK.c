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
struct TYPE_3__ {scalar_t__ fcp_abort_io; scalar_t__ fcp_cleanup; scalar_t__ fcp_cmd_send; } ;
struct fc_lport {TYPE_2__* host; struct fc_fcp_internal* scsi_priv; TYPE_1__ tt; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_pkt_pool; int /*<<< orphan*/  scsi_queue_lock; int /*<<< orphan*/  scsi_pkt_queue; int /*<<< orphan*/  max_can_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  can_queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ fc_fcp_abort_io ; 
 scalar_t__ fc_fcp_cleanup ; 
 scalar_t__ fc_fcp_cmd_send ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_internal*) ; 
 struct fc_fcp_internal* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_pkt_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct fc_lport *lport)
{
	int rc;
	struct fc_fcp_internal *si;

	if (!lport->tt.fcp_cmd_send)
		lport->tt.fcp_cmd_send = fc_fcp_cmd_send;

	if (!lport->tt.fcp_cleanup)
		lport->tt.fcp_cleanup = fc_fcp_cleanup;

	if (!lport->tt.fcp_abort_io)
		lport->tt.fcp_abort_io = fc_fcp_abort_io;

	si = FUNC2(sizeof(struct fc_fcp_internal), GFP_KERNEL);
	if (!si)
		return -ENOMEM;
	lport->scsi_priv = si;
	si->max_can_queue = lport->host->can_queue;
	FUNC0(&si->scsi_pkt_queue);
	FUNC4(&si->scsi_queue_lock);

	si->scsi_pkt_pool = FUNC3(2, scsi_pkt_cachep);
	if (!si->scsi_pkt_pool) {
		rc = -ENOMEM;
		goto free_internal;
	}
	return 0;

free_internal:
	FUNC1(si);
	return rc;
}