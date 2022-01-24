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
struct subchannel {int /*<<< orphan*/  schid; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_1__ dev; } ;
typedef  enum dev_event { ____Placeholder_dev_event } dev_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ccw_device *cdev,
				      enum dev_event dev_event)
{
	struct subchannel *sch = FUNC1(cdev->dev.parent);

	FUNC0(sch->schid);
}