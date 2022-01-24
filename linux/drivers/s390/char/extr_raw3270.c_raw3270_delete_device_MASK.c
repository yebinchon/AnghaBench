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
struct raw3270 {struct raw3270* ascebc; struct ccw_device* cdev; int /*<<< orphan*/  list; } ;
struct ccw_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3270*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw3270_mutex ; 

__attribute__((used)) static void
FUNC6(struct raw3270 *rp)
{
	struct ccw_device *cdev;

	/* Remove from device chain. */
	FUNC3(&raw3270_mutex);
	FUNC2(&rp->list);
	FUNC4(&raw3270_mutex);

	/* Disconnect from ccw_device. */
	cdev = rp->cdev;
	rp->cdev = NULL;
	FUNC0(&cdev->dev, NULL);
	cdev->handler = NULL;

	/* Put ccw_device structure. */
	FUNC5(&cdev->dev);

	/* Now free raw3270 structure. */
	FUNC1(rp->ascebc);
	FUNC1(rp);
}