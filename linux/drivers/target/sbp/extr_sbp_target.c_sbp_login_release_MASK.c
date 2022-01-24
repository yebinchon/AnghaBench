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
struct sbp_session {int /*<<< orphan*/  lock; } ;
struct sbp_login_descriptor {int /*<<< orphan*/  link; int /*<<< orphan*/  tgt_agt; struct sbp_session* sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbp_login_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp_session*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sbp_login_descriptor *login,
	bool cancel_work)
{
	struct sbp_session *sess = login->sess;

	/* FIXME: abort/wait on tasks */

	FUNC3(login->tgt_agt);

	if (sess) {
		FUNC4(&sess->lock);
		FUNC1(&login->link);
		FUNC5(&sess->lock);

		FUNC2(sess, cancel_work);
	}

	FUNC0(login);
}