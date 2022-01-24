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
struct slim_msg_txn {int tid; } ;
struct slim_controller {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  tid_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SLIM_MAX_TIDS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct slim_msg_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct slim_controller *ctrl, struct slim_msg_txn *txn)
{
	unsigned long flags;
	int ret = 0;

	FUNC1(&ctrl->txn_lock, flags);
	ret = FUNC0(&ctrl->tid_idr, txn, 0,
				SLIM_MAX_TIDS, GFP_ATOMIC);
	if (ret < 0) {
		FUNC2(&ctrl->txn_lock, flags);
		return ret;
	}
	txn->tid = ret;
	FUNC2(&ctrl->txn_lock, flags);
	return 0;
}