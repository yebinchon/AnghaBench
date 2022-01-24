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

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ SIS_MODE ; 
 scalar_t__ FUNC0 (struct pqi_ctrl_info*) ; 
 int FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC4 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static int FUNC5(struct pqi_ctrl_info *ctrl_info)
{
	if (!FUNC3(ctrl_info))
		return -ENXIO;

	if (FUNC0(ctrl_info) == SIS_MODE)
		return 0;

	if (FUNC4(ctrl_info)) {
		FUNC2(ctrl_info, SIS_MODE);
		return 0;
	}

	return FUNC1(ctrl_info);
}