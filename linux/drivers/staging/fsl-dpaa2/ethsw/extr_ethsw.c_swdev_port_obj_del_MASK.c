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
struct switchdev_obj {int id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_OBJ_ID_PORT_MDB 129 
#define  SWITCHDEV_OBJ_ID_PORT_VLAN 128 
 int /*<<< orphan*/  FUNC0 (struct switchdev_obj const*) ; 
 int /*<<< orphan*/  FUNC1 (struct switchdev_obj const*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			      const struct switchdev_obj *obj)
{
	int err;

	switch (obj->id) {
	case SWITCHDEV_OBJ_ID_PORT_VLAN:
		err = FUNC3(netdev, FUNC1(obj));
		break;
	case SWITCHDEV_OBJ_ID_PORT_MDB:
		err = FUNC2(netdev, FUNC0(obj));
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}
	return err;
}