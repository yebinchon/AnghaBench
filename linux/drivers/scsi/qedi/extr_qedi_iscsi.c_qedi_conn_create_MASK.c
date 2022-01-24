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
typedef  int /*<<< orphan*/  uint32_t ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; } ;
struct qedi_conn {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_list; scalar_t__ active_cmd_count; int /*<<< orphan*/ * ep; struct qedi_ctx* qedi; struct iscsi_cls_conn* cls_conn; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ALERT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,int /*<<< orphan*/ ,struct iscsi_cls_session*) ; 
 struct iscsi_cls_conn* FUNC3 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cls_conn*) ; 
 struct qedi_ctx* FUNC5 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC6 (struct iscsi_cls_session*) ; 
 scalar_t__ FUNC7 (struct qedi_ctx*,struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iscsi_cls_conn *
FUNC9(struct iscsi_cls_session *cls_session, uint32_t cid)
{
	struct Scsi_Host *shost = FUNC6(cls_session);
	struct qedi_ctx *qedi = FUNC5(shost);
	struct iscsi_cls_conn *cls_conn;
	struct qedi_conn *qedi_conn;
	struct iscsi_conn *conn;

	cls_conn = FUNC3(cls_session, sizeof(*qedi_conn),
				    cid);
	if (!cls_conn) {
		FUNC1(&qedi->dbg_ctx,
			 "conn_new: iscsi conn setup failed, cid=0x%x, cls_sess=%p!\n",
			 cid, cls_session);
		return NULL;
	}

	conn = cls_conn->dd_data;
	qedi_conn = conn->dd_data;
	qedi_conn->cls_conn = cls_conn;
	qedi_conn->qedi = qedi;
	qedi_conn->ep = NULL;
	qedi_conn->active_cmd_count = 0;
	FUNC0(&qedi_conn->active_cmd_list);
	FUNC8(&qedi_conn->list_lock);

	if (FUNC7(qedi, qedi_conn)) {
		FUNC2(KERN_ALERT, conn,
				  "conn_new: login resc alloc failed, cid=0x%x, cls_sess=%p!!\n",
				   cid, cls_session);
		goto free_conn;
	}

	return cls_conn;

free_conn:
	FUNC4(cls_conn);
	return NULL;
}