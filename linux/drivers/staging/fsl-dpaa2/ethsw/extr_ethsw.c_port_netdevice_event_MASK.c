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
struct netdev_notifier_changeupper_info {scalar_t__ linking; struct net_device* upper_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_CHANGEUPPER ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct net_device*,struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *unused,
				unsigned long event, void *ptr)
{
	struct net_device *netdev = FUNC1(ptr);
	struct netdev_notifier_changeupper_info *info = ptr;
	struct net_device *upper_dev;
	int err = 0;

	if (!FUNC0(netdev))
		return NOTIFY_DONE;

	/* Handle just upper dev link/unlink for the moment */
	if (event == NETDEV_CHANGEUPPER) {
		upper_dev = info->upper_dev;
		if (FUNC2(upper_dev)) {
			if (info->linking)
				err = FUNC4(netdev, upper_dev);
			else
				err = FUNC5(netdev);
		}
	}

	return FUNC3(err);
}