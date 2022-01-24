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
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct subchannel {TYPE_1__ dev; int /*<<< orphan*/  reg_mutex; } ;
struct device {int dummy; } ;
struct css_driver {int (* prepare ) (struct subchannel*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct subchannel*) ; 
 struct css_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct subchannel *sch = FUNC3(dev);
	struct css_driver *drv;

	if (FUNC0(&sch->reg_mutex))
		return -EAGAIN;
	if (!sch->dev.driver)
		return 0;
	drv = FUNC2(sch->dev.driver);
	/* Notify drivers that they may not register children. */
	return drv->prepare ? drv->prepare(sch) : 0;
}