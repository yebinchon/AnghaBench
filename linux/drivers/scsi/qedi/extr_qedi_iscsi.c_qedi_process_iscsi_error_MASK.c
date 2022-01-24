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
typedef  scalar_t__ u32 ;
struct qedi_endpoint {struct qedi_ctx* qedi; struct qedi_conn* conn; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; } ;
struct qedi_conn {int /*<<< orphan*/  qedi; TYPE_1__* cls_conn; } ;
struct iscsi_eqe_data {int /*<<< orphan*/  error_code; } ;
struct TYPE_2__ {int /*<<< orphan*/  dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qedi_conn*) ; 

void FUNC4(struct qedi_endpoint *ep,
			      struct iscsi_eqe_data *data)
{
	struct qedi_conn *qedi_conn;
	struct qedi_ctx *qedi;
	char warn_notice[] = "iscsi_warning";
	char error_notice[] = "iscsi_error";
	char unknown_msg[] = "Unknown error";
	char *message;
	int need_recovery = 0;
	u32 err_mask = 0;
	char *msg;

	if (!ep)
		return;

	qedi_conn = ep->conn;
	if (!qedi_conn)
		return;

	qedi = ep->qedi;

	FUNC0(&qedi->dbg_ctx, "async event iscsi error:0x%x\n",
		 data->error_code);

	if (err_mask) {
		need_recovery = 0;
		message = warn_notice;
	} else {
		need_recovery = 1;
		message = error_notice;
	}

	msg = FUNC2(data->error_code);
	if (!msg) {
		need_recovery = 0;
		msg = unknown_msg;
	}

	FUNC1(KERN_ALERT,
			  qedi_conn->cls_conn->dd_data,
			  "qedi: %s - %s\n", message, msg);

	if (need_recovery)
		FUNC3(qedi_conn->qedi, qedi_conn);
}