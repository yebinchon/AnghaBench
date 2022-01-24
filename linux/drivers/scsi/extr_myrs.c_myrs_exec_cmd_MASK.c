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
struct myrs_hba {int /*<<< orphan*/  queue_lock; } ;
struct myrs_cmdblk {int /*<<< orphan*/ * complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct myrs_hba*,struct myrs_cmdblk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct myrs_hba *cs,
		struct myrs_cmdblk *cmd_blk)
{
	FUNC0(complete);
	unsigned long flags;

	cmd_blk->complete = &complete;
	FUNC4(&cs->queue_lock, flags);
	FUNC3(cs, cmd_blk);
	FUNC5(&cs->queue_lock, flags);

	FUNC1(FUNC2());
	FUNC6(&complete);
}