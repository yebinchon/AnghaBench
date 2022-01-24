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
struct iscsi_task {scalar_t__ hdr; struct beiscsi_io_task* dd_data; } ;
struct iscsi_nopin {int /*<<< orphan*/  itt; int /*<<< orphan*/  opcode; void* max_cmdsn; void* exp_cmdsn; int /*<<< orphan*/  flags; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct common_sol_cqe {scalar_t__ cmd_wnd; scalar_t__ exp_cmdsn; int /*<<< orphan*/  i_flags; } ;
struct beiscsi_io_task {int /*<<< orphan*/  libiscsi_itt; } ;
struct beiscsi_conn {struct iscsi_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_OP_NOOP_IN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct beiscsi_conn *beiscsi_conn,
			struct iscsi_task *task,
			struct common_sol_cqe *csol_cqe)
{
	struct iscsi_nopin *hdr;
	struct iscsi_conn *conn = beiscsi_conn->conn;
	struct beiscsi_io_task *io_task = task->dd_data;

	hdr = (struct iscsi_nopin *)task->hdr;
	hdr->flags = csol_cqe->i_flags;
	hdr->exp_cmdsn = FUNC1(csol_cqe->exp_cmdsn);
	hdr->max_cmdsn = FUNC1(csol_cqe->exp_cmdsn +
				     csol_cqe->cmd_wnd - 1);

	hdr->opcode = ISCSI_OP_NOOP_IN;
	hdr->itt = io_task->libiscsi_itt;
	FUNC0(conn, (struct iscsi_hdr *)hdr, NULL, 0);
}