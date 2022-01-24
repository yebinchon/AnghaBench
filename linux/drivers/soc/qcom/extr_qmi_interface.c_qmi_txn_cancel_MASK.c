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
struct qmi_txn {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; struct qmi_handle* qmi; } ;
struct qmi_handle {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  txns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct qmi_txn *txn)
{
	struct qmi_handle *qmi = txn->qmi;

	FUNC1(&qmi->txn_lock);
	FUNC1(&txn->lock);
	FUNC0(&qmi->txns, txn->id);
	FUNC2(&txn->lock);
	FUNC2(&qmi->txn_lock);
}