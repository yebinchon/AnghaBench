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
struct config_group {int dummy; } ;
struct se_hba {struct config_group hba_group; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 struct config_group* FUNC0 (struct se_hba*) ; 
 struct config_group* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct se_hba*) ; 
 int TARGET_CORE_NAME_MAX_LEN ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 struct se_hba* FUNC4 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  target_core_hba_cit ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static struct config_group *FUNC12(
	struct config_group *group,
	const char *name)
{
	char *se_plugin_str, *str, *str2;
	struct se_hba *hba;
	char buf[TARGET_CORE_NAME_MAX_LEN];
	unsigned long plugin_dep_id = 0;
	int ret;

	FUNC6(buf, 0, TARGET_CORE_NAME_MAX_LEN);
	if (FUNC9(name) >= TARGET_CORE_NAME_MAX_LEN) {
		FUNC7("Passed *name strlen(): %d exceeds"
			" TARGET_CORE_NAME_MAX_LEN: %d\n", (int)FUNC9(name),
			TARGET_CORE_NAME_MAX_LEN);
		return FUNC1(-ENAMETOOLONG);
	}
	FUNC8(buf, TARGET_CORE_NAME_MAX_LEN, "%s", name);

	str = FUNC10(buf, "_");
	if (!str) {
		FUNC7("Unable to locate \"_\" for $SUBSYSTEM_PLUGIN_$HOST_ID\n");
		return FUNC1(-EINVAL);
	}
	se_plugin_str = buf;
	/*
	 * Special case for subsystem plugins that have "_" in their names.
	 * Namely rd_direct and rd_mcp..
	 */
	str2 = FUNC10(str+1, "_");
	if (str2) {
		*str2 = '\0'; /* Terminate for *se_plugin_str */
		str2++; /* Skip to start of plugin dependent ID */
		str = str2;
	} else {
		*str = '\0'; /* Terminate for *se_plugin_str */
		str++; /* Skip to start of plugin dependent ID */
	}

	ret = FUNC5(str, 0, &plugin_dep_id);
	if (ret < 0) {
		FUNC7("kstrtoul() returned %d for"
				" plugin_dep_id\n", ret);
		return FUNC1(ret);
	}
	/*
	 * Load up TCM subsystem plugins if they have not already been loaded.
	 */
	FUNC11();

	hba = FUNC4(se_plugin_str, plugin_dep_id, 0);
	if (FUNC2(hba))
		return FUNC0(hba);

	FUNC3(&hba->hba_group, name,
			&target_core_hba_cit);

	return &hba->hba_group;
}