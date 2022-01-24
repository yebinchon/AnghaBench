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
struct pqi_ctrl_info {int /*<<< orphan*/  scan_mutex; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int FUNC4 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC5(struct pqi_ctrl_info *ctrl_info)
{
	int rc = 0;

	if (FUNC2(ctrl_info))
		return -ENXIO;

	if (!FUNC0(&ctrl_info->scan_mutex)) {
		FUNC3(ctrl_info);
		rc = -EINPROGRESS;
	} else {
		rc = FUNC4(ctrl_info);
		if (rc)
			FUNC3(ctrl_info);
		FUNC1(&ctrl_info->scan_mutex);
	}

	return rc;
}