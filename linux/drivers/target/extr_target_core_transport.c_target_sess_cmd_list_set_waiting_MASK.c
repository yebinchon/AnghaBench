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
struct se_session {int sess_tearing_down; int /*<<< orphan*/  cmd_count; int /*<<< orphan*/  sess_cmd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct se_session *se_sess)
{
	unsigned long flags;

	FUNC1(&se_sess->sess_cmd_lock, flags);
	se_sess->sess_tearing_down = 1;
	FUNC2(&se_sess->sess_cmd_lock, flags);

	FUNC0(&se_sess->cmd_count);
}