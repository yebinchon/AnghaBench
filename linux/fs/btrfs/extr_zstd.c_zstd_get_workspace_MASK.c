#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  wait ; 
 TYPE_1__ wsm ; 
 struct list_head* FUNC7 (unsigned int) ; 
 struct list_head* FUNC8 (unsigned int) ; 

__attribute__((used)) static struct list_head *FUNC9(unsigned int level)
{
	struct list_head *ws;
	unsigned int nofs_flag;

	/* level == 0 means we can use any workspace */
	if (!level)
		level = 1;

again:
	ws = FUNC8(level);
	if (ws)
		return ws;

	nofs_flag = FUNC4();
	ws = FUNC7(level);
	FUNC3(nofs_flag);

	if (FUNC1(ws)) {
		FUNC0(wait);

		FUNC5(&wsm.wait, &wait, TASK_UNINTERRUPTIBLE);
		FUNC6();
		FUNC2(&wsm.wait, &wait);

		goto again;
	}

	return ws;
}