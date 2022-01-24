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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  port_nb ; 
 int /*<<< orphan*/  port_switchdev_blocking_nb ; 
 int /*<<< orphan*/  port_switchdev_nb ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int err;

	err = FUNC1(&port_nb);
	if (err) {
		FUNC0(dev, "Failed to register netdev notifier\n");
		return err;
	}

	err = FUNC3(&port_switchdev_nb);
	if (err) {
		FUNC0(dev, "Failed to register switchdev notifier\n");
		goto err_switchdev_nb;
	}

	err = FUNC2(&port_switchdev_blocking_nb);
	if (err) {
		FUNC0(dev, "Failed to register switchdev blocking notifier\n");
		goto err_switchdev_blocking_nb;
	}

	return 0;

err_switchdev_blocking_nb:
	FUNC5(&port_switchdev_nb);
err_switchdev_nb:
	FUNC4(&port_nb);
	return err;
}