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
struct vctrl_data {int enabled; int /*<<< orphan*/  ctrl_reg; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 struct vctrl_data* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct vctrl_data *vctrl = FUNC0(rdev);
	int ret = FUNC1(vctrl->ctrl_reg);

	if (!ret)
		vctrl->enabled = false;

	return ret;
}