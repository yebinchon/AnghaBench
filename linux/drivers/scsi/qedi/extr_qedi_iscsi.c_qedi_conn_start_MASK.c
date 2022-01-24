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
struct qedi_ctx {int dummy; } ;
struct qedi_conn {scalar_t__ abrt_conn; int /*<<< orphan*/  flags; struct qedi_ctx* qedi; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  QEDI_CONN_FW_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iscsi_conn*,char*) ; 
 int FUNC2 (struct iscsi_cls_conn*) ; 
 int FUNC3 (struct qedi_ctx*,struct qedi_conn*) ; 

__attribute__((used)) static int FUNC4(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct qedi_conn *qedi_conn = conn->dd_data;
	struct qedi_ctx *qedi;
	int rval;

	qedi = qedi_conn->qedi;

	rval = FUNC3(qedi, qedi_conn);
	if (rval) {
		FUNC1(KERN_ALERT, conn,
				  "conn_start: FW offload conn failed.\n");
		rval = -EINVAL;
		goto start_err;
	}

	FUNC0(QEDI_CONN_FW_CLEANUP, &qedi_conn->flags);
	qedi_conn->abrt_conn = 0;

	rval = FUNC2(cls_conn);
	if (rval) {
		FUNC1(KERN_ALERT, conn,
				  "iscsi_conn_start: FW offload conn failed!!\n");
	}

start_err:
	return rval;
}