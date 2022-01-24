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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_cooling_device {struct tegra_soctherm* devdata; } ;
struct tegra_soctherm {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ THROT_STATUS ; 
 int /*<<< orphan*/  THROT_STATUS_STATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct thermal_cooling_device *cdev,
				    unsigned long *cur_state)
{
	struct tegra_soctherm *ts = cdev->devdata;
	u32 r;

	r = FUNC1(ts->regs + THROT_STATUS);
	if (FUNC0(r, THROT_STATUS_STATE_MASK))
		*cur_state = 1;
	else
		*cur_state = 0;

	return 0;
}