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
struct se_session {int /*<<< orphan*/  cmd_count; int /*<<< orphan*/  cmd_list_wq; int /*<<< orphan*/  sess_cmd_lock; int /*<<< orphan*/  sess_cmd_list; int /*<<< orphan*/  sess_acl_list; int /*<<< orphan*/  sess_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_release_sess_cmd_refcnt ; 

int FUNC4(struct se_session *se_sess)
{
	FUNC0(&se_sess->sess_list);
	FUNC0(&se_sess->sess_acl_list);
	FUNC0(&se_sess->sess_cmd_list);
	FUNC3(&se_sess->sess_cmd_lock);
	FUNC1(&se_sess->cmd_list_wq);
	return FUNC2(&se_sess->cmd_count,
			       target_release_sess_cmd_refcnt, 0, GFP_KERNEL);
}