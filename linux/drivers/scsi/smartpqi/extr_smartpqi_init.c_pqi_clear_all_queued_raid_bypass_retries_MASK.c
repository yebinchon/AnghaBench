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
struct pqi_ctrl_info {int /*<<< orphan*/  raid_bypass_retry_list_lock; int /*<<< orphan*/  raid_bypass_retry_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(
	struct pqi_ctrl_info *ctrl_info)
{
	unsigned long flags;

	FUNC1(&ctrl_info->raid_bypass_retry_list_lock, flags);
	FUNC0(&ctrl_info->raid_bypass_retry_list);
	FUNC2(&ctrl_info->raid_bypass_retry_list_lock, flags);
}