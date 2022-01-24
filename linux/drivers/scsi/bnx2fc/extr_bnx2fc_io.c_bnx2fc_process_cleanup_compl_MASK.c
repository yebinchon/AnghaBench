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
typedef  int /*<<< orphan*/  u8 ;
struct fcoe_task_ctx_entry {int dummy; } ;
struct bnx2fc_cmd {int /*<<< orphan*/  cleanup_done; scalar_t__ wait_for_cleanup_comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  abts_done; scalar_t__ wait_for_abts_comp; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  cmd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_FLAG_ABTS_DONE ; 
 int /*<<< orphan*/  BNX2FC_FLAG_ISSUE_ABTS ; 
 int /*<<< orphan*/  BNX2FC_FLAG_ISSUE_CLEANUP_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_cmd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  bnx2fc_cmd_release ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct bnx2fc_cmd *io_req,
				  struct fcoe_task_ctx_entry *task,
				  u8 num_rq)
{
	FUNC0(io_req, "Entered process_cleanup_compl "
			      "refcnt = %d, cmd_type = %d\n",
		   FUNC4(&io_req->refcount), io_req->cmd_type);
	/*
	 * Test whether there is a cleanup request pending. If not just
	 * exit.
	 */
	if (!FUNC6(BNX2FC_FLAG_ISSUE_CLEANUP_REQ,
				&io_req->req_flags))
		return;
	/*
	 * If we receive a cleanup completion for this request then the
	 * firmware will not give us an abort completion for this request
	 * so clear any ABTS pending flags.
	 */
	if (FUNC7(BNX2FC_FLAG_ISSUE_ABTS, &io_req->req_flags) &&
	    !FUNC7(BNX2FC_FLAG_ABTS_DONE, &io_req->req_flags)) {
		FUNC5(BNX2FC_FLAG_ABTS_DONE, &io_req->req_flags);
		if (io_req->wait_for_abts_comp)
			FUNC2(&io_req->abts_done);
	}

	FUNC1(io_req, DID_ERROR);
	FUNC3(&io_req->refcount, bnx2fc_cmd_release);
	if (io_req->wait_for_cleanup_comp)
		FUNC2(&io_req->cleanup_done);
}