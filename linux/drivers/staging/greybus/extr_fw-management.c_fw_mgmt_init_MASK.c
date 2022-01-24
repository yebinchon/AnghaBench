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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_mgmt_class ; 
 int /*<<< orphan*/  fw_mgmt_dev_num ; 

int FUNC5(void)
{
	int ret;

	fw_mgmt_class = FUNC3(THIS_MODULE, "gb_fw_mgmt");
	if (FUNC0(fw_mgmt_class))
		return FUNC1(fw_mgmt_class);

	ret = FUNC2(&fw_mgmt_dev_num, 0, NUM_MINORS,
				  "gb_fw_mgmt");
	if (ret)
		goto err_remove_class;

	return 0;

err_remove_class:
	FUNC4(fw_mgmt_class);
	return ret;
}