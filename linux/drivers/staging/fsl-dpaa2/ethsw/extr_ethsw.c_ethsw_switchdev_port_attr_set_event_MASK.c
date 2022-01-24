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
struct switchdev_notifier_port_attr_info {int handled; int /*<<< orphan*/  trans; int /*<<< orphan*/  attr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev,
		struct switchdev_notifier_port_attr_info *port_attr_info)
{
	int err;

	err = FUNC1(netdev, port_attr_info->attr,
				  port_attr_info->trans);

	port_attr_info->handled = true;
	return FUNC0(err);
}