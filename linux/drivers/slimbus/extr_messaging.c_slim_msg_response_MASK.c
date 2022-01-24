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
typedef  int /*<<< orphan*/  u8 ;
struct slim_val_inf {int /*<<< orphan*/ * rbuf; } ;
struct slim_msg_txn {scalar_t__ comp; struct slim_val_inf* msg; } ;
struct slim_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  tid_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct slim_msg_txn* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct slim_controller*,struct slim_msg_txn*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct slim_controller *ctrl, u8 *reply, u8 tid, u8 len)
{
	struct slim_msg_txn *txn;
	struct slim_val_inf *msg;
	unsigned long flags;

	FUNC7(&ctrl->txn_lock, flags);
	txn = FUNC2(&ctrl->tid_idr, tid);
	FUNC8(&ctrl->txn_lock, flags);

	if (txn == NULL)
		return;

	msg = txn->msg;
	if (msg == NULL || msg->rbuf == NULL) {
		FUNC1(ctrl->dev, "Got response to invalid TID:%d, len:%d\n",
				tid, len);
		return;
	}

	FUNC6(ctrl, txn);
	FUNC3(msg->rbuf, reply, len);
	if (txn->comp)
		FUNC0(txn->comp);

	/* Remove runtime-pm vote now that response was received for TID txn */
	FUNC4(ctrl->dev);
	FUNC5(ctrl->dev);
}