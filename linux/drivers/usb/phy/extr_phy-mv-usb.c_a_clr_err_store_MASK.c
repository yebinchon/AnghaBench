#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int a_clr_err; } ;
struct TYPE_7__ {TYPE_2__* otg; } ;
struct mv_otg {int /*<<< orphan*/  wq_lock; TYPE_1__* pdev; TYPE_4__ otg_ctrl; TYPE_3__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  default_a; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mv_otg* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_otg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct mv_otg *mvotg = FUNC1(dev);
	if (!mvotg->phy.otg->default_a)
		return -1;

	if (count > 2)
		return -1;

	if (buf[0] == '1') {
		mvotg->otg_ctrl.a_clr_err = 1;
		FUNC0(&mvotg->pdev->dev,
			"User request: a_clr_err = 1\n");
	}

	if (FUNC3(&mvotg->wq_lock)) {
		FUNC2(mvotg, 0);
		FUNC4(&mvotg->wq_lock);
	}

	return count;
}