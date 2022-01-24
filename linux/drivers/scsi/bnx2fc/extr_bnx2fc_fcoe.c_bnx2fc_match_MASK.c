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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bnx2fc_dev_lock ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct net_device*) ; 

__attribute__((used)) static bool FUNC5(struct net_device *netdev)
{
	struct net_device *phys_dev = netdev;

	FUNC2(&bnx2fc_dev_lock);
	if (FUNC1(netdev))
		phys_dev = FUNC4(netdev);

	if (FUNC0(phys_dev)) {
		FUNC3(&bnx2fc_dev_lock);
		return true;
	}

	FUNC3(&bnx2fc_dev_lock);
	return false;
}