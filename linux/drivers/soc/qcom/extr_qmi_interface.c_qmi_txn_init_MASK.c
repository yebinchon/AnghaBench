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
struct qmi_txn {int id; void* dest; struct qmi_elem_info* ei; struct qmi_handle* qmi; int /*<<< orphan*/  completion; int /*<<< orphan*/  lock; } ;
struct qmi_handle {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  txns; } ;
struct qmi_elem_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  U16_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qmi_txn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct qmi_handle *qmi, struct qmi_txn *txn,
		 struct qmi_elem_info *ei, void *c_struct)
{
	int ret;

	FUNC2(txn, 0, sizeof(*txn));

	FUNC3(&txn->lock);
	FUNC1(&txn->completion);
	txn->qmi = qmi;
	txn->ei = ei;
	txn->dest = c_struct;

	FUNC4(&qmi->txn_lock);
	ret = FUNC0(&qmi->txns, txn, 0, U16_MAX, GFP_KERNEL);
	if (ret < 0)
		FUNC6("failed to allocate transaction id\n");

	txn->id = ret;
	FUNC5(&qmi->txn_lock);

	return ret;
}