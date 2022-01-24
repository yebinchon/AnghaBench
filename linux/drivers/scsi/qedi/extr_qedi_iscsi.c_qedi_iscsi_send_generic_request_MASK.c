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
struct TYPE_4__ {int req_buf_size; char* req_buf; } ;
struct qedi_conn {TYPE_2__* cls_conn; TYPE_1__ gen_pdu; } ;
struct qedi_cmd {struct qedi_conn* conn; } ;
struct iscsi_task {TYPE_3__* hdr; struct qedi_cmd* dd_data; } ;
struct TYPE_6__ {int opcode; } ;
struct TYPE_5__ {int /*<<< orphan*/  dd_data; } ;

/* Variables and functions */
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_LOGIN 132 
#define  ISCSI_OP_LOGOUT 131 
#define  ISCSI_OP_NOOP_OUT 130 
#define  ISCSI_OP_SCSI_TMFUNC 129 
#define  ISCSI_OP_TEXT 128 
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct qedi_conn*,struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qedi_conn*,struct iscsi_task*) ; 
 int FUNC4 (struct qedi_conn*,struct iscsi_task*) ; 
 int FUNC5 (struct qedi_conn*,struct iscsi_task*,char*,int,int) ; 
 int FUNC6 (struct qedi_conn*,struct iscsi_task*) ; 

__attribute__((used)) static int FUNC7(struct iscsi_task *task)
{
	struct qedi_cmd *cmd = task->dd_data;
	struct qedi_conn *qedi_conn = cmd->conn;
	char *buf;
	int data_len;
	int rc = 0;

	FUNC2(qedi_conn);
	switch (task->hdr->opcode & ISCSI_OPCODE_MASK) {
	case ISCSI_OP_LOGIN:
		FUNC3(qedi_conn, task);
		break;
	case ISCSI_OP_NOOP_OUT:
		data_len = qedi_conn->gen_pdu.req_buf_size;
		buf = qedi_conn->gen_pdu.req_buf;
		if (data_len)
			rc = FUNC5(qedi_conn, task,
						    buf, data_len, 1);
		else
			rc = FUNC5(qedi_conn, task,
						    NULL, 0, 1);
		break;
	case ISCSI_OP_LOGOUT:
		rc = FUNC4(qedi_conn, task);
		break;
	case ISCSI_OP_SCSI_TMFUNC:
		rc = FUNC1(qedi_conn, task);
		break;
	case ISCSI_OP_TEXT:
		rc = FUNC6(qedi_conn, task);
		break;
	default:
		FUNC0(KERN_ALERT, qedi_conn->cls_conn->dd_data,
				  "unsupported op 0x%x\n", task->hdr->opcode);
	}

	return rc;
}