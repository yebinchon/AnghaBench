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
struct reset_controller_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_reset_controller_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct reset_controller_dev**) ; 
 struct reset_controller_dev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct reset_controller_dev**) ; 
 int FUNC3 (struct reset_controller_dev*) ; 

int FUNC4(struct device *dev,
				   struct reset_controller_dev *rcdev)
{
	struct reset_controller_dev **rcdevp;
	int ret;

	rcdevp = FUNC1(devm_reset_controller_release, sizeof(*rcdevp),
			      GFP_KERNEL);
	if (!rcdevp)
		return -ENOMEM;

	ret = FUNC3(rcdev);
	if (!ret) {
		*rcdevp = rcdev;
		FUNC0(dev, rcdevp);
	} else {
		FUNC2(rcdevp);
	}

	return ret;
}