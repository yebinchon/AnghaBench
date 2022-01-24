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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  gb_fw_core_driver ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	int ret;

	ret = FUNC3();
	if (ret) {
		FUNC5("Failed to initialize fw-mgmt core (%d)\n", ret);
		return ret;
	}

	ret = FUNC1();
	if (ret) {
		FUNC5("Failed to initialize component authentication core (%d)\n",
		       ret);
		goto fw_mgmt_exit;
	}

	ret = FUNC4(&gb_fw_core_driver);
	if (ret)
		goto cap_exit;

	return 0;

cap_exit:
	FUNC0();
fw_mgmt_exit:
	FUNC2();

	return ret;
}