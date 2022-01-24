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
struct net_device {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  SWITCHDEV_PORT_ATTR_SET 130 
#define  SWITCHDEV_PORT_OBJ_ADD 129 
#define  SWITCHDEV_PORT_OBJ_DEL 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,void*) ; 
 int FUNC2 (unsigned long,struct net_device*,void*) ; 
 struct net_device* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *unused,
					 unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC3(ptr);

	if (!FUNC0(dev))
		return NOTIFY_DONE;

	switch (event) {
	case SWITCHDEV_PORT_OBJ_ADD: /* fall through */
	case SWITCHDEV_PORT_OBJ_DEL:
		return FUNC2(event, dev, ptr);
	case SWITCHDEV_PORT_ATTR_SET:
		return FUNC1(dev, ptr);
	}

	return NOTIFY_DONE;
}