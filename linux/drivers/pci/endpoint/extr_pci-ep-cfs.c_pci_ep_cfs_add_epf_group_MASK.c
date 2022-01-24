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

/* Variables and functions */
 scalar_t__ FUNC0 (struct config_group*) ; 
 struct config_group* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  functions_group ; 
 int /*<<< orphan*/  pci_epf_group_type ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

struct config_group *FUNC3(const char *name)
{
	struct config_group *group;

	group = FUNC1(functions_group, name,
						&pci_epf_group_type);
	if (FUNC0(group))
		FUNC2("failed to register configfs group for %s function\n",
		       name);

	return group;
}