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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  port_nb ; 
 struct notifier_block port_switchdev_blocking_nb ; 
 int /*<<< orphan*/  port_switchdev_nb ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct notifier_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct notifier_block *nb;
	int err;

	nb = &port_switchdev_blocking_nb;
	err = FUNC2(nb);
	if (err)
		FUNC0(dev,
			"Failed to unregister switchdev blocking notifier (%d)\n", err);

	err = FUNC3(&port_switchdev_nb);
	if (err)
		FUNC0(dev,
			"Failed to unregister switchdev notifier (%d)\n", err);

	err = FUNC1(&port_nb);
	if (err)
		FUNC0(dev,
			"Failed to unregister netdev notifier (%d)\n", err);
}