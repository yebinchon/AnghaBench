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
struct subchannel {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv; } ;

/* Variables and functions */
 TYPE_1__ chsc_subchannel_driver ; 
 int /*<<< orphan*/  chsc_subchannel_match_next_free ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC1 (struct device*) ; 

__attribute__((used)) static struct subchannel *FUNC2(struct subchannel *sch)
{
	struct device *dev;

	dev = FUNC0(&chsc_subchannel_driver.drv,
				 sch ? &sch->dev : NULL, NULL,
				 chsc_subchannel_match_next_free);
	return dev ? FUNC1(dev) : NULL;
}