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
struct usblp {int /*<<< orphan*/  rwait; int /*<<< orphan*/  mut; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct usblp*,int) ; 
 int /*<<< orphan*/  waita ; 

__attribute__((used)) static int FUNC8(struct usblp *usblp, int nonblock)
{
	FUNC0(waita, current);
	int rc;

	FUNC1(&usblp->rwait, &waita);
	for (;;) {
		if (FUNC2(&usblp->mut)) {
			rc = -EINTR;
			break;
		}
		FUNC6(TASK_INTERRUPTIBLE);
		if ((rc = FUNC7(usblp, nonblock)) < 0) {
			FUNC3(&usblp->mut);
			break;
		}
		if (rc == 0)	/* Keep it locked */
			break;
		FUNC3(&usblp->mut);
		FUNC5();
	}
	FUNC6(TASK_RUNNING);
	FUNC4(&usblp->rwait, &waita);
	return rc;
}