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
struct slim_msg_txn {int /*<<< orphan*/  tid; } ;
struct slim_controller {int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  tid_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct slim_controller *ctrl, struct slim_msg_txn *txn)
{
	unsigned long flags;

	FUNC1(&ctrl->txn_lock, flags);
	FUNC0(&ctrl->tid_idr, txn->tid);
	FUNC2(&ctrl->txn_lock, flags);
}