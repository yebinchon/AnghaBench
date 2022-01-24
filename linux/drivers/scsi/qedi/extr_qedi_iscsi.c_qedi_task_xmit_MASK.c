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
struct scsi_cmnd {int dummy; } ;
struct qedi_conn {int dummy; } ;
struct qedi_cmd {int use_slowpath; int io_cmd_in_list; struct scsi_cmnd* scsi_cmd; int /*<<< orphan*/  io_cmd; struct iscsi_task* task; struct qedi_conn* conn; scalar_t__ state; } ;
struct iscsi_task {struct scsi_cmnd* sc; struct qedi_cmd* dd_data; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iscsi_task*) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_task*) ; 

__attribute__((used)) static int FUNC3(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;
	struct qedi_conn *qedi_conn = conn->dd_data;
	struct qedi_cmd *cmd = task->dd_data;
	struct scsi_cmnd *sc = task->sc;

	cmd->state = 0;
	cmd->task = NULL;
	cmd->use_slowpath = false;
	cmd->conn = qedi_conn;
	cmd->task = task;
	cmd->io_cmd_in_list = false;
	FUNC0(&cmd->io_cmd);

	if (!sc)
		return FUNC2(conn, task);

	cmd->scsi_cmd = sc;
	return FUNC1(task);
}