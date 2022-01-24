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
struct isst_if_cmd_cb {int /*<<< orphan*/  owner; scalar_t__ registered; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ISST_IF_DEV_MAX ; 
 int /*<<< orphan*/  misc_device_open ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct isst_if_cmd_cb* punit_callbacks ; 
 int /*<<< orphan*/  punit_misc_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	int i, ret = 0;

	/* Fail open, if a module is going away */
	FUNC1(&punit_misc_dev_lock);
	for (i = 0; i < ISST_IF_DEV_MAX; ++i) {
		struct isst_if_cmd_cb *cb = &punit_callbacks[i];

		if (cb->registered && !FUNC3(cb->owner)) {
			ret = -ENODEV;
			break;
		}
	}
	if (ret) {
		int j;

		for (j = 0; j < i; ++j) {
			struct isst_if_cmd_cb *cb;

			cb = &punit_callbacks[j];
			if (cb->registered)
				FUNC0(cb->owner);
		}
	} else {
		misc_device_open++;
	}
	FUNC2(&punit_misc_dev_lock);

	return ret;
}