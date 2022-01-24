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
struct qrtr_ctrl_pkt {int dummy; } ;
struct qmi_ops {int dummy; } ;
struct qmi_msg_handler {int dummy; } ;
struct qmi_header {int dummy; } ;
struct qmi_handle {size_t recv_buf_size; int /*<<< orphan*/  recv_buf; int /*<<< orphan*/  wq; int /*<<< orphan*/  sock; int /*<<< orphan*/  sq; struct qmi_ops ops; struct qmi_msg_handler const* handlers; int /*<<< orphan*/  work; int /*<<< orphan*/  services; int /*<<< orphan*/  lookup_results; int /*<<< orphan*/  lookups; int /*<<< orphan*/  txns; int /*<<< orphan*/  sock_lock; int /*<<< orphan*/  txn_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  qmi_data_ready_work ; 
 int /*<<< orphan*/  FUNC11 (struct qmi_handle*,int /*<<< orphan*/ *) ; 

int FUNC12(struct qmi_handle *qmi, size_t recv_buf_size,
		    const struct qmi_ops *ops,
		    const struct qmi_msg_handler *handlers)
{
	int ret;

	FUNC9(&qmi->txn_lock);
	FUNC9(&qmi->sock_lock);

	FUNC6(&qmi->txns);

	FUNC0(&qmi->lookups);
	FUNC0(&qmi->lookup_results);
	FUNC0(&qmi->services);

	FUNC1(&qmi->work, qmi_data_ready_work);

	qmi->handlers = handlers;
	if (ops)
		qmi->ops = *ops;

	/* Make room for the header */
	recv_buf_size += sizeof(struct qmi_header);
	/* Must also be sufficient to hold a control packet */
	if (recv_buf_size < sizeof(struct qrtr_ctrl_pkt))
		recv_buf_size = sizeof(struct qrtr_ctrl_pkt);

	qmi->recv_buf_size = recv_buf_size;
	qmi->recv_buf = FUNC8(recv_buf_size, GFP_KERNEL);
	if (!qmi->recv_buf)
		return -ENOMEM;

	qmi->wq = FUNC4("qmi_msg_handler", WQ_UNBOUND, 1);
	if (!qmi->wq) {
		ret = -ENOMEM;
		goto err_free_recv_buf;
	}

	qmi->sock = FUNC11(qmi, &qmi->sq);
	if (FUNC2(qmi->sock)) {
		FUNC10("failed to create QMI socket\n");
		ret = FUNC3(qmi->sock);
		goto err_destroy_wq;
	}

	return 0;

err_destroy_wq:
	FUNC5(qmi->wq);
err_free_recv_buf:
	FUNC7(qmi->recv_buf);

	return ret;
}