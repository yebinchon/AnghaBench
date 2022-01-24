#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pqi_ctrl_info {unsigned int num_queue_groups; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct pqi_ctrl_info*) ; 
 int FUNC2 (struct pqi_ctrl_info*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	unsigned int i;

	rc = FUNC1(ctrl_info);
	if (rc) {
		FUNC0(&ctrl_info->pci_dev->dev,
			"error creating event queue\n");
		return rc;
	}

	for (i = 0; i < ctrl_info->num_queue_groups; i++) {
		rc = FUNC2(ctrl_info, i);
		if (rc) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"error creating queue group number %u/%u\n",
				i, ctrl_info->num_queue_groups);
			return rc;
		}
	}

	return 0;
}