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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int FUNC0 (char*,char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_cpi_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  sysplex_name ; 
 int /*<<< orphan*/  system_level ; 
 int /*<<< orphan*/  system_name ; 
 int /*<<< orphan*/  system_type ; 

int FUNC5(const char *system, const char *sysplex, const char *type,
		      const u64 level)
{
	int rc;

	rc = FUNC0("system_name", system);
	if (rc)
		return rc;
	rc = FUNC0("sysplex_name", sysplex);
	if (rc)
		return rc;
	rc = FUNC0("system_type", type);
	if (rc)
		return rc;

	FUNC2(&sclp_cpi_mutex);
	FUNC4(system_name, system);
	FUNC4(sysplex_name, sysplex);
	FUNC4(system_type, type);
	system_level = level;

	rc = FUNC1();
	FUNC3(&sclp_cpi_mutex);

	return rc;
}