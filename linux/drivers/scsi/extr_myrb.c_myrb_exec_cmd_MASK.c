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
struct myrb_hba {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  (* qcmd ) (struct myrb_hba*,struct myrb_cmdblk*) ;} ;
struct myrb_cmdblk {unsigned short status; int /*<<< orphan*/ * completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmpl ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct myrb_hba*,struct myrb_cmdblk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned short FUNC7(struct myrb_hba *cb,
		struct myrb_cmdblk *cmd_blk)
{
	FUNC0(cmpl);
	unsigned long flags;

	cmd_blk->completion = &cmpl;

	FUNC3(&cb->queue_lock, flags);
	cb->qcmd(cb, cmd_blk);
	FUNC4(&cb->queue_lock, flags);

	FUNC1(FUNC2());
	FUNC6(&cmpl);
	return cmd_blk->status;
}