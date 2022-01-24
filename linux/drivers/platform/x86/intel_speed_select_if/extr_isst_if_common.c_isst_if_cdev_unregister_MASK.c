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
struct TYPE_2__ {scalar_t__ registered; } ;

/* Variables and functions */
 int ISST_IF_DEV_MBOX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  isst_if_char_driver ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  misc_device_ret ; 
 int /*<<< orphan*/  misc_usage_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* punit_callbacks ; 
 int /*<<< orphan*/  punit_misc_dev_lock ; 

void FUNC5(int device_type)
{
	FUNC3(&punit_misc_dev_lock);
	misc_usage_count--;
	punit_callbacks[device_type].registered = 0;
	if (device_type == ISST_IF_DEV_MBOX)
		FUNC0();
	if (!misc_usage_count && !misc_device_ret) {
		FUNC2(&isst_if_char_driver);
		FUNC1();
	}
	FUNC4(&punit_misc_dev_lock);
}