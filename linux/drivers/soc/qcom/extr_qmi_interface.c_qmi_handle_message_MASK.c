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
typedef  int /*<<< orphan*/  tmp_txn ;
struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int result; int /*<<< orphan*/  id; int /*<<< orphan*/  lock; int /*<<< orphan*/  completion; scalar_t__ dest; scalar_t__ ei; } ;
struct qmi_header {scalar_t__ type; int /*<<< orphan*/  txn_id; } ;
struct qmi_handle {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  txns; } ;

/* Variables and functions */
 scalar_t__ QMI_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qmi_txn* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qmi_txn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (void const*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void const*,size_t) ; 

__attribute__((used)) static void FUNC8(struct qmi_handle *qmi,
			       struct sockaddr_qrtr *sq,
			       const void *buf, size_t len)
{
	const struct qmi_header *hdr;
	struct qmi_txn tmp_txn;
	struct qmi_txn *txn = NULL;
	int ret;

	if (len < sizeof(*hdr)) {
		FUNC5("ignoring short QMI packet\n");
		return;
	}

	hdr = buf;

	/* If this is a response, find the matching transaction handle */
	if (hdr->type == QMI_RESPONSE) {
		FUNC3(&qmi->txn_lock);
		txn = FUNC1(&qmi->txns, hdr->txn_id);

		/* Ignore unexpected responses */
		if (!txn) {
			FUNC4(&qmi->txn_lock);
			return;
		}

		FUNC3(&txn->lock);
		FUNC4(&qmi->txn_lock);

		if (txn->dest && txn->ei) {
			ret = FUNC6(buf, len, txn->ei, txn->dest);
			if (ret < 0)
				FUNC5("failed to decode incoming message\n");

			txn->result = ret;
			FUNC0(&txn->completion);
		} else  {
			FUNC7(qmi, sq, txn, buf, len);
		}

		FUNC4(&txn->lock);
	} else {
		/* Create a txn based on the txn_id of the incoming message */
		FUNC2(&tmp_txn, 0, sizeof(tmp_txn));
		tmp_txn.id = hdr->txn_id;

		FUNC7(qmi, sq, &tmp_txn, buf, len);
	}
}