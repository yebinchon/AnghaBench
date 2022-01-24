#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_2__ dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* read_offset ) (int /*<<< orphan*/ ,long*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC3 (long,int) ; 

int FUNC4(struct rtc_device *rtc, long *offset)
{
	int ret;

	if (!rtc->ops)
		return -ENODEV;

	if (!rtc->ops->read_offset)
		return -EINVAL;

	FUNC0(&rtc->ops_lock);
	ret = rtc->ops->read_offset(rtc->dev.parent, offset);
	FUNC1(&rtc->ops_lock);

	FUNC3(*offset, ret);
	return ret;
}