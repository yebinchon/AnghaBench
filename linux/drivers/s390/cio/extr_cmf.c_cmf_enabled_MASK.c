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
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ccw_device *cdev)
{
	int enabled;

	FUNC0(cdev->ccwlock);
	enabled = !!cdev->private->cmb;
	FUNC1(cdev->ccwlock);

	return enabled;
}