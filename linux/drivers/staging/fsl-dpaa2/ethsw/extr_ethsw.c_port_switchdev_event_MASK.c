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
typedef  int /*<<< orphan*/  u8 ;
struct switchdev_notifier_fdb_info {int /*<<< orphan*/  addr; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {void* addr; } ;
struct ethsw_switchdev_event_work {unsigned long event; int /*<<< orphan*/  work; TYPE_1__ fdb_info; struct net_device* dev; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
#define  SWITCHDEV_FDB_ADD_TO_DEVICE 129 
#define  SWITCHDEV_FDB_DEL_TO_DEVICE 128 
 unsigned long SWITCHDEV_PORT_ATTR_SET ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethsw_owq ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ethsw_switchdev_event_work ; 
 int FUNC4 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ethsw_switchdev_event_work*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct notifier_block *unused,
				unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC9(ptr);
	struct ethsw_switchdev_event_work *switchdev_work;
	struct switchdev_notifier_fdb_info *fdb_info = ptr;

	if (!FUNC3(dev))
		return NOTIFY_DONE;

	if (event == SWITCHDEV_PORT_ATTR_SET)
		return FUNC4(dev, ptr);

	switchdev_work = FUNC6(sizeof(*switchdev_work), GFP_ATOMIC);
	if (!switchdev_work)
		return NOTIFY_BAD;

	FUNC0(&switchdev_work->work, ethsw_switchdev_event_work);
	switchdev_work->dev = dev;
	switchdev_work->event = event;

	switch (event) {
	case SWITCHDEV_FDB_ADD_TO_DEVICE:
	case SWITCHDEV_FDB_DEL_TO_DEVICE:
		FUNC7(&switchdev_work->fdb_info, ptr,
		       sizeof(switchdev_work->fdb_info));
		switchdev_work->fdb_info.addr = FUNC6(ETH_ALEN, GFP_ATOMIC);
		if (!switchdev_work->fdb_info.addr)
			goto err_addr_alloc;

		FUNC2((u8 *)switchdev_work->fdb_info.addr,
				fdb_info->addr);

		/* Take a reference on the device to avoid being freed. */
		FUNC1(dev);
		break;
	default:
		FUNC5(switchdev_work);
		return NOTIFY_DONE;
	}

	FUNC8(ethsw_owq, &switchdev_work->work);

	return NOTIFY_DONE;

err_addr_alloc:
	FUNC5(switchdev_work);
	return NOTIFY_BAD;
}