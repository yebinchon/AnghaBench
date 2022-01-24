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
 int /*<<< orphan*/  NUM_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_mgmt_class ; 
 int /*<<< orphan*/  fw_mgmt_dev_num ; 
 int /*<<< orphan*/  fw_mgmt_minors_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	FUNC2(fw_mgmt_dev_num, NUM_MINORS);
	FUNC0(fw_mgmt_class);
	FUNC1(&fw_mgmt_minors_map);
}