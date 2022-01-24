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
struct pqi_queue_group {scalar_t__* iq_pi_copy; int /*<<< orphan*/ * iq_ci; } ;
struct pqi_ctrl_info {unsigned int num_queue_groups; struct pqi_queue_group* queue_groups; } ;
typedef  scalar_t__ pqi_index_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC1 (struct pqi_ctrl_info*) ; 
 int FUNC2 (struct pqi_ctrl_info*,struct pqi_queue_group*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	unsigned int i;
	unsigned int path;
	struct pqi_queue_group *queue_group;
	pqi_index_t iq_pi;
	pqi_index_t iq_ci;

	for (i = 0; i < ctrl_info->num_queue_groups; i++) {
		queue_group = &ctrl_info->queue_groups[i];

		rc = FUNC2(ctrl_info, queue_group);
		if (rc)
			return rc;

		for (path = 0; path < 2; path++) {
			iq_pi = queue_group->iq_pi_copy[path];

			while (1) {
				iq_ci = FUNC3(queue_group->iq_ci[path]);
				if (iq_ci == iq_pi)
					break;
				FUNC0(ctrl_info);
				if (FUNC1(ctrl_info))
					return -ENXIO;
				FUNC4(1000, 2000);
			}
		}
	}

	return 0;
}