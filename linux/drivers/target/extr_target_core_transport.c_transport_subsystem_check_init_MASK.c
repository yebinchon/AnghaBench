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
 int /*<<< orphan*/  CONFIG_TCM_FILEIO ; 
 int /*<<< orphan*/  CONFIG_TCM_IBLOCK ; 
 int /*<<< orphan*/  CONFIG_TCM_PSCSI ; 
 int /*<<< orphan*/  CONFIG_TCM_USER2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3(void)
{
	int ret;
	static int sub_api_initialized;

	if (sub_api_initialized)
		return;

	ret = FUNC0(CONFIG_TCM_IBLOCK) && FUNC2("target_core_iblock");
	if (ret != 0)
		FUNC1("Unable to load target_core_iblock\n");

	ret = FUNC0(CONFIG_TCM_FILEIO) && FUNC2("target_core_file");
	if (ret != 0)
		FUNC1("Unable to load target_core_file\n");

	ret = FUNC0(CONFIG_TCM_PSCSI) && FUNC2("target_core_pscsi");
	if (ret != 0)
		FUNC1("Unable to load target_core_pscsi\n");

	ret = FUNC0(CONFIG_TCM_USER2) && FUNC2("target_core_user");
	if (ret != 0)
		FUNC1("Unable to load target_core_user\n");

	sub_api_initialized = 1;
}