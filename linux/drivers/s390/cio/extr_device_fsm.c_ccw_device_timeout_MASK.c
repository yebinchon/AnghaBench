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
struct timer_list {int dummy; } ;
struct ccw_device_private {struct ccw_device* cdev; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 struct ccw_device_private* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ccw_device_private* priv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ timeout_log_enabled ; 
 int /*<<< orphan*/  timer ; 

void
FUNC5(struct timer_list *t)
{
	struct ccw_device_private *priv = FUNC2(priv, t, timer);
	struct ccw_device *cdev = priv->cdev;

	FUNC3(cdev->ccwlock);
	if (timeout_log_enabled)
		FUNC0(cdev);
	FUNC1(cdev, DEV_EVENT_TIMEOUT);
	FUNC4(cdev->ccwlock);
}