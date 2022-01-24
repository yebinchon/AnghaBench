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
struct pqi_ctrl_info {int /*<<< orphan*/  rescan_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(
	struct pqi_ctrl_info *ctrl_info, unsigned long delay)
{
	if (FUNC1(ctrl_info))
		return;
	if (FUNC0(ctrl_info))
		return;

	FUNC2(&ctrl_info->rescan_work, delay);
}