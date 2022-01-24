#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int state; int /*<<< orphan*/  list; int /*<<< orphan*/ * pthru; int /*<<< orphan*/  raw_mbox; int /*<<< orphan*/  idx; } ;
typedef  TYPE_2__ scb_t ;
struct TYPE_12__ {scalar_t__ cmd; int status; int /*<<< orphan*/  subopcode; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_3__ megacmd_t ;
typedef  int /*<<< orphan*/  mega_passthru ;
struct TYPE_13__ {int int_status; int /*<<< orphan*/  int_mtx; TYPE_1__* dev; int /*<<< orphan*/  int_waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  quiescent; int /*<<< orphan*/  pending_list; TYPE_2__ int_scb; } ;
typedef  TYPE_4__ adapter_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDID_INT_CMDS ; 
 scalar_t__ MEGA_MBOXCMD_PASSTHRU ; 
 int SCB_ACTIVE ; 
 int SCB_PENDQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ trace_level ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(adapter_t *adapter, megacmd_t *mc, mega_passthru *pthru)
{
	unsigned long flags;
	scb_t	*scb;
	int	rval;

	/*
	 * The internal commands share one command id and hence are
	 * serialized. This is so because we want to reserve maximum number of
	 * available command ids for the I/O commands.
	 */
	FUNC6(&adapter->int_mtx);

	scb = &adapter->int_scb;
	FUNC5(scb, 0, sizeof(scb_t));

	scb->idx = CMDID_INT_CMDS;
	scb->state |= SCB_ACTIVE | SCB_PENDQ;

	FUNC4(scb->raw_mbox, mc, sizeof(megacmd_t));

	/*
	 * Is it a passthru command
	 */
	if (mc->cmd == MEGA_MBOXCMD_PASSTHRU)
		scb->pthru = pthru;

	FUNC8(&adapter->lock, flags);
	FUNC2(&scb->list, &adapter->pending_list);
	/*
	 * Check if the HBA is in quiescent state, e.g., during a
	 * delete logical drive opertion. If it is, don't run
	 * the pending_list.
	 */
	if (FUNC0(&adapter->quiescent) == 0)
		FUNC3(adapter);
	FUNC9(&adapter->lock, flags);

	FUNC10(&adapter->int_waitq);

	mc->status = rval = adapter->int_status;

	/*
	 * Print a debug message for all failed commands. Applications can use
	 * this information.
	 */
	if (rval && trace_level) {
		FUNC1(&adapter->dev->dev, "cmd [%x, %x, %x] status:[%x]\n",
			mc->cmd, mc->opcode, mc->subopcode, rval);
	}

	FUNC7(&adapter->int_mtx);
	return rval;
}