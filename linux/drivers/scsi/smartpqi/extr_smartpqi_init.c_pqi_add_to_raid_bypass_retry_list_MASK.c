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
struct pqi_io_request {int /*<<< orphan*/  request_list_entry; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  raid_bypass_retry_list_lock; int /*<<< orphan*/  raid_bypass_retry_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(
	struct pqi_ctrl_info *ctrl_info,
	struct pqi_io_request *io_request, bool at_head)
{
	unsigned long flags;

	FUNC2(&ctrl_info->raid_bypass_retry_list_lock, flags);
	if (at_head)
		FUNC0(&io_request->request_list_entry,
			&ctrl_info->raid_bypass_retry_list);
	else
		FUNC1(&io_request->request_list_entry,
			&ctrl_info->raid_bypass_retry_list);
	FUNC3(&ctrl_info->raid_bypass_retry_list_lock, flags);
}