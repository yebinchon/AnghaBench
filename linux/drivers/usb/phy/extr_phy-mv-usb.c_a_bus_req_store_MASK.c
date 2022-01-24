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
struct TYPE_7__ {int a_bus_req; scalar_t__ a_bus_drop; } ;
struct TYPE_6__ {TYPE_1__* otg; } ;
struct mv_otg {int /*<<< orphan*/  wq_lock; TYPE_4__* pdev; TYPE_3__ otg_ctrl; TYPE_2__ phy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ OTG_STATE_A_IDLE ; 
 scalar_t__ OTG_STATE_B_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mv_otg* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_otg*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_otg*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_otg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct mv_otg *mvotg = FUNC1(dev);

	if (count > 2)
		return -1;

	/* We will use this interface to change to A device */
	if (mvotg->phy.otg->state != OTG_STATE_B_IDLE
	    && mvotg->phy.otg->state != OTG_STATE_A_IDLE)
		return -1;

	/* The clock may disabled and we need to set irq for ID detected */
	FUNC2(mvotg);
	FUNC3(mvotg);

	if (buf[0] == '1') {
		mvotg->otg_ctrl.a_bus_req = 1;
		mvotg->otg_ctrl.a_bus_drop = 0;
		FUNC0(&mvotg->pdev->dev,
			"User request: a_bus_req = 1\n");

		if (FUNC5(&mvotg->wq_lock)) {
			FUNC4(mvotg, 0);
			FUNC6(&mvotg->wq_lock);
		}
	}

	return count;
}