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
typedef  int /*<<< orphan*/  u64 ;
struct qedi_endpoint {scalar_t__ state; int /*<<< orphan*/  fw_cid; int /*<<< orphan*/  iscsi_cid; struct qedi_conn* conn; } ;
struct qedi_ctx {int dummy; } ;
struct qedi_conn {int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  tmf_work_list; int /*<<< orphan*/  tmf_work_lock; scalar_t__ cmd_cleanup_cmpl; scalar_t__ cmd_cleanup_req; int /*<<< orphan*/  fw_cid; int /*<<< orphan*/  iscsi_conn_id; struct qedi_endpoint* ep; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EP_STATE_TCP_FIN_RCVD ; 
 scalar_t__ EP_STATE_TCP_RST_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ; 
 struct qedi_ctx* FUNC3 (struct Scsi_Host*) ; 
 struct iscsi_endpoint* FUNC4 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC5 (struct iscsi_cls_session*) ; 
 scalar_t__ FUNC6 (struct qedi_ctx*,struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iscsi_cls_session *cls_session,
			  struct iscsi_cls_conn *cls_conn,
			  u64 transport_fd, int is_leading)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct qedi_conn *qedi_conn = conn->dd_data;
	struct Scsi_Host *shost = FUNC5(cls_session);
	struct qedi_ctx *qedi = FUNC3(shost);
	struct qedi_endpoint *qedi_ep;
	struct iscsi_endpoint *ep;

	ep = FUNC4(transport_fd);
	if (!ep)
		return -EINVAL;

	qedi_ep = ep->dd_data;
	if ((qedi_ep->state == EP_STATE_TCP_FIN_RCVD) ||
	    (qedi_ep->state == EP_STATE_TCP_RST_RCVD))
		return -EINVAL;

	if (FUNC2(cls_session, cls_conn, is_leading))
		return -EINVAL;

	qedi_ep->conn = qedi_conn;
	qedi_conn->ep = qedi_ep;
	qedi_conn->iscsi_conn_id = qedi_ep->iscsi_cid;
	qedi_conn->fw_cid = qedi_ep->fw_cid;
	qedi_conn->cmd_cleanup_req = 0;
	qedi_conn->cmd_cleanup_cmpl = 0;

	if (FUNC6(qedi, qedi_conn))
		return -EINVAL;

	FUNC7(&qedi_conn->tmf_work_lock);
	FUNC0(&qedi_conn->tmf_work_list);
	FUNC1(&qedi_conn->wait_queue);
	return 0;
}