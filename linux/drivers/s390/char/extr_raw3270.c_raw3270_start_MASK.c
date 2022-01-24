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
struct raw3270_view {struct raw3270* dev; } ;
struct raw3270_request {int dummy; } ;
struct raw3270 {int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; struct raw3270_view* view; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int /*<<< orphan*/  RAW3270_FLAGS_FROZEN ; 
 int FUNC0 (struct raw3270*,struct raw3270_view*,struct raw3270_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct raw3270*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(struct raw3270_view *view, struct raw3270_request *rq)
{
	unsigned long flags;
	struct raw3270 *rp;
	int rc;

	FUNC3(FUNC1(view->dev->cdev), flags);
	rp = view->dev;
	if (!rp || rp->view != view ||
	    FUNC5(RAW3270_FLAGS_FROZEN, &rp->flags))
		rc = -EACCES;
	else if (!FUNC2(rp))
		rc = -EBUSY;
	else
		rc =  FUNC0(rp, view, rq);
	FUNC4(FUNC1(view->dev->cdev), flags);
	return rc;
}