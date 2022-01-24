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
struct bnx2i_conn {TYPE_2__* ep; } ;
struct bnx2i_cmd_request {scalar_t__ cq_index; } ;
struct bnx2i_cmd {int /*<<< orphan*/  req; } ;
struct TYPE_3__ {scalar_t__ sq_prod_qe; } ;
struct TYPE_4__ {TYPE_1__ qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2i_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_cmd_request*,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct bnx2i_conn *bnx2i_conn,
			     struct bnx2i_cmd *cmd)
{
	struct bnx2i_cmd_request *scsi_cmd_wqe;

	scsi_cmd_wqe = (struct bnx2i_cmd_request *)
						bnx2i_conn->ep->qp.sq_prod_qe;
	FUNC1(scsi_cmd_wqe, &cmd->req, sizeof(struct bnx2i_cmd_request));
	scsi_cmd_wqe->cq_index = 0; /* CQ# used for completion, 5771x only */

	FUNC0(bnx2i_conn, 1);
	return 0;
}