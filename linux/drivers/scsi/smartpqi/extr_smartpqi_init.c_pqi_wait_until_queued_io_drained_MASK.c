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
struct pqi_queue_group {int /*<<< orphan*/ * submit_lock; int /*<<< orphan*/ * request_list; } ;
struct pqi_ctrl_info {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct pqi_ctrl_info *ctrl_info,
	struct pqi_queue_group *queue_group)
{
	unsigned int path;
	unsigned long flags;
	bool list_is_empty;

	for (path = 0; path < 2; path++) {
		while (1) {
			FUNC3(
				&queue_group->submit_lock[path], flags);
			list_is_empty =
				FUNC0(&queue_group->request_list[path]);
			FUNC4(
				&queue_group->submit_lock[path], flags);
			if (list_is_empty)
				break;
			FUNC1(ctrl_info);
			if (FUNC2(ctrl_info))
				return -ENXIO;
			FUNC5(1000, 2000);
		}
	}

	return 0;
}