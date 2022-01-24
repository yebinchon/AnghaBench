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
struct sbitmap_queue {struct sbq_wait_state* ws; } ;
struct se_session {struct sbitmap_queue sess_tag_pool; } ;
struct sbq_wait_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TASK_RUNNING ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct sbitmap_queue*,struct sbq_wait_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sbitmap_queue*,struct sbq_wait_state*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct sbitmap_queue*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC6(struct se_session *se_sess, int state, int *cpup)
{
	int tag = -1;
	FUNC0(wait);
	struct sbq_wait_state *ws;
	struct sbitmap_queue *sbq;

	if (state == TASK_RUNNING)
		return tag;

	sbq = &se_sess->sess_tag_pool;
	ws = &sbq->ws[0];
	for (;;) {
		FUNC2(sbq, ws, &wait, state);
		if (FUNC5(state, current))
			break;
		tag = FUNC3(sbq, cpup);
		if (tag >= 0)
			break;
		FUNC4();
	}

	FUNC1(sbq, ws, &wait);
	return tag;
}