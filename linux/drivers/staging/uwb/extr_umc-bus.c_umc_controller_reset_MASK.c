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
struct TYPE_2__ {struct device* parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct device*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  umc_bus_post_reset_helper ; 
 int /*<<< orphan*/  umc_bus_pre_reset_helper ; 

int FUNC3(struct umc_dev *umc)
{
	struct device *parent = umc->dev.parent;
	int ret = 0;

	if (!FUNC1(parent))
		return -EAGAIN;
	ret = FUNC0(parent, parent, umc_bus_pre_reset_helper);
	if (ret >= 0)
		ret = FUNC0(parent, parent, umc_bus_post_reset_helper);
	FUNC2(parent);

	return ret;
}