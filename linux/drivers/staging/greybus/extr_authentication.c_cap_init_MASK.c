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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_MINORS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cap_class ; 
 int /*<<< orphan*/  cap_dev_num ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	int ret;

	cap_class = FUNC3(THIS_MODULE, "gb_authenticate");
	if (FUNC0(cap_class))
		return FUNC1(cap_class);

	ret = FUNC2(&cap_dev_num, 0, NUM_MINORS,
				  "gb_authenticate");
	if (ret)
		goto err_remove_class;

	return 0;

err_remove_class:
	FUNC4(cap_class);
	return ret;
}