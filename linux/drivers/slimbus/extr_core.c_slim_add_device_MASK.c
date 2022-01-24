#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * driver; int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/ * bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  instance; int /*<<< orphan*/  dev_index; int /*<<< orphan*/  prod_code; int /*<<< orphan*/  manf_id; } ;
struct slim_device {TYPE_2__ dev; TYPE_1__ e_addr; int /*<<< orphan*/  stream_list_lock; int /*<<< orphan*/  stream_list; struct slim_controller* ctrl; } ;
struct slim_controller {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  slim_dev_release ; 
 int /*<<< orphan*/  slimbus_bus ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct slim_controller *ctrl,
			   struct slim_device *sbdev,
			   struct device_node *node)
{
	sbdev->dev.bus = &slimbus_bus;
	sbdev->dev.parent = ctrl->dev;
	sbdev->dev.release = slim_dev_release;
	sbdev->dev.driver = NULL;
	sbdev->ctrl = ctrl;
	FUNC0(&sbdev->stream_list);
	FUNC4(&sbdev->stream_list_lock);

	if (node)
		sbdev->dev.of_node = FUNC3(node);

	FUNC1(&sbdev->dev, "%x:%x:%x:%x",
				  sbdev->e_addr.manf_id,
				  sbdev->e_addr.prod_code,
				  sbdev->e_addr.dev_index,
				  sbdev->e_addr.instance);

	return FUNC2(&sbdev->dev);
}