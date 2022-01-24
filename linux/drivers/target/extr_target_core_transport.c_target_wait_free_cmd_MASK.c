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
struct se_cmd {int /*<<< orphan*/  t_state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_cmd*,int,int*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct se_cmd *cmd, bool *aborted, bool *tas)
{
	unsigned long flags;

	FUNC1(&cmd->t_state_lock, flags);
	FUNC0(cmd, true, aborted, tas, &flags);
	FUNC2(&cmd->t_state_lock, flags);
}