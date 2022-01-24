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
struct rio_dev {int /*<<< orphan*/ * pwcback; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  rio_global_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct rio_dev *rdev)
{
	int rc = -ENOMEM;

	FUNC0(&rio_global_list_lock);
	if (rdev->pwcback) {
		rdev->pwcback = NULL;
		rc = 0;
	}

	FUNC1(&rio_global_list_lock);
	return rc;
}