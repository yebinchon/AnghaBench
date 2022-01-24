#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct isst_if_cmd_cb {int dummy; } ;
struct TYPE_3__ {int registered; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ISST_IF_DEV_MAX ; 
 int /*<<< orphan*/  isst_if_char_driver ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct isst_if_cmd_cb*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ misc_device_open ; 
 int misc_device_ret ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  misc_usage_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* punit_callbacks ; 
 int /*<<< orphan*/  punit_misc_dev_lock ; 

int FUNC6(int device_type, struct isst_if_cmd_cb *cb)
{
	if (misc_device_ret)
		return misc_device_ret;

	if (device_type >= ISST_IF_DEV_MAX)
		return -EINVAL;

	FUNC4(&punit_misc_dev_lock);
	if (misc_device_open) {
		FUNC5(&punit_misc_dev_lock);
		return -EAGAIN;
	}
	if (!misc_usage_count) {
		int ret;

		misc_device_ret = FUNC3(&isst_if_char_driver);
		if (misc_device_ret)
			goto unlock_exit;

		ret = FUNC0();
		if (ret) {
			FUNC2(&isst_if_char_driver);
			misc_device_ret = ret;
			goto unlock_exit;
		}
	}
	FUNC1(&punit_callbacks[device_type], cb, sizeof(*cb));
	punit_callbacks[device_type].registered = 1;
	misc_usage_count++;
unlock_exit:
	FUNC5(&punit_misc_dev_lock);

	return misc_device_ret;
}