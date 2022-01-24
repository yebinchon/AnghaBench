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
struct pqi_config_table_section_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pqi_firmware_features_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_config_table_section_info*) ; 

__attribute__((used)) static void FUNC4(
	struct pqi_config_table_section_info *section_info)
{
	FUNC0(&pqi_firmware_features_mutex);
	FUNC2();
	FUNC3(section_info);
	FUNC1(&pqi_firmware_features_mutex);
}