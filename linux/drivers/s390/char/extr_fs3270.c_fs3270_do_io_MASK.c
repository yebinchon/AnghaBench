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
struct raw3270_view {int dummy; } ;
struct raw3270_request {int /*<<< orphan*/ * callback_data; int /*<<< orphan*/  callback; } ;
struct fs3270 {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  fs3270_wake_up ; 
 int /*<<< orphan*/  FUNC0 (struct fs3270*) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3270_request*) ; 
 int FUNC2 (struct raw3270_view*,struct raw3270_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct raw3270_view *view, struct raw3270_request *rq)
{
	struct fs3270 *fp;
	int rc;

	fp = (struct fs3270 *) view;
	rq->callback = fs3270_wake_up;
	rq->callback_data = &fp->wait;

	do {
		if (!FUNC0(fp)) {
			/* Fullscreen view isn't ready yet. */
			rc = FUNC4(fp->wait,
						      FUNC0(fp));
			if (rc != 0)
				break;
		}
		rc = FUNC2(view, rq);
		if (rc == 0) {
			/* Started successfully. Now wait for completion. */
			FUNC3(fp->wait, FUNC1(rq));
		}
	} while (rc == -EACCES);
	return rc;
}