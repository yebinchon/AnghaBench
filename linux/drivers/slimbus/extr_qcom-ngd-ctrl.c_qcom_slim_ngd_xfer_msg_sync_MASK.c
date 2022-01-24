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
struct slim_msg_txn {int /*<<< orphan*/  mt; int /*<<< orphan*/  mc; int /*<<< orphan*/ * comp; } ;
struct slim_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct slim_controller*,struct slim_msg_txn*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct slim_controller *ctrl,
				       struct slim_msg_txn *txn)
{
	FUNC0(done);
	int ret, timeout;

	FUNC2(ctrl->dev);

	txn->comp = &done;

	ret = FUNC3(ctrl, txn);
	if (ret)
		return ret;

	timeout = FUNC4(&done, HZ);
	if (!timeout) {
		FUNC1(ctrl->dev, "TX timed out:MC:0x%x,mt:0x%x", txn->mc,
				txn->mt);
		return -ETIMEDOUT;
	}
	return 0;
}