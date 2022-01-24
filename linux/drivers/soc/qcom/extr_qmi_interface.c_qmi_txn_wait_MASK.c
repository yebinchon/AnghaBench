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
struct qmi_txn {int result; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; int /*<<< orphan*/  completion; struct qmi_handle* qmi; } ;
struct qmi_handle {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  txns; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct qmi_txn *txn, unsigned long timeout)
{
	struct qmi_handle *qmi = txn->qmi;
	int ret;

	ret = FUNC3(&txn->completion, timeout);

	FUNC1(&qmi->txn_lock);
	FUNC1(&txn->lock);
	FUNC0(&qmi->txns, txn->id);
	FUNC2(&txn->lock);
	FUNC2(&qmi->txn_lock);

	if (ret == 0)
		return -ETIMEDOUT;
	else
		return txn->result;
}