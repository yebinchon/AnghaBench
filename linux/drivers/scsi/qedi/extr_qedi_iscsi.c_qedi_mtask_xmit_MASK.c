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
struct TYPE_2__ {scalar_t__ req_buf; scalar_t__ req_wr_ptr; scalar_t__ req_buf_size; } ;
struct qedi_conn {TYPE_1__ gen_pdu; } ;
struct qedi_cmd {int /*<<< orphan*/ * scsi_cmd; struct qedi_conn* conn; } ;
struct iscsi_task {scalar_t__ data_count; int /*<<< orphan*/  data; struct qedi_cmd* dd_data; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iscsi_task*) ; 

__attribute__((used)) static int FUNC3(struct iscsi_conn *conn, struct iscsi_task *task)
{
	struct qedi_conn *qedi_conn = conn->dd_data;
	struct qedi_cmd *cmd = task->dd_data;

	FUNC1(qedi_conn->gen_pdu.req_buf, 0, ISCSI_DEF_MAX_RECV_SEG_LEN);

	qedi_conn->gen_pdu.req_buf_size = task->data_count;

	if (task->data_count) {
		FUNC0(qedi_conn->gen_pdu.req_buf, task->data,
		       task->data_count);
		qedi_conn->gen_pdu.req_wr_ptr =
			qedi_conn->gen_pdu.req_buf + task->data_count;
	}

	cmd->conn = conn->dd_data;
	cmd->scsi_cmd = NULL;
	return FUNC2(task);
}