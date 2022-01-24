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
struct pqi_ctrl_info {int dummy; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int PQI_HZ ; 
 int PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS ; 
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC1 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC2 (struct completion*,int) ; 

__attribute__((used)) static int FUNC3(struct pqi_ctrl_info *ctrl_info,
	struct completion *wait)
{
	int rc;

	while (1) {
		if (FUNC2(wait,
			PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS * PQI_HZ)) {
			rc = 0;
			break;
		}

		FUNC0(ctrl_info);
		if (FUNC1(ctrl_info)) {
			rc = -ENXIO;
			break;
		}
	}

	return rc;
}