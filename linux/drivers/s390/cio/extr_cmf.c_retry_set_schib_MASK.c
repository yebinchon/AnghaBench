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
struct set_schib_struct {int /*<<< orphan*/  wait; int /*<<< orphan*/  address; int /*<<< orphan*/  mbfc; int /*<<< orphan*/  mme; int /*<<< orphan*/  ret; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct set_schib_struct* cmb_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ccw_device *cdev)
{
	struct set_schib_struct *set_data = cdev->private->cmb_wait;

	if (!set_data)
		return;

	set_data->ret = FUNC0(cdev, set_data->mme, set_data->mbfc,
				  set_data->address);
	FUNC1(&set_data->wait);
}