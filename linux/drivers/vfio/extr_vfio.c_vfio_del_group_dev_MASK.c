#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vfio_unbound_dev {int /*<<< orphan*/  unbound_next; struct device* dev; } ;
struct vfio_group {int /*<<< orphan*/  container; int /*<<< orphan*/  container_q; int /*<<< orphan*/  device_list; int /*<<< orphan*/  unbound_lock; int /*<<< orphan*/  unbound_list; } ;
struct vfio_device {TYPE_1__* ops; void* device_data; struct vfio_group* group; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  comm; } ;
struct TYPE_7__ {int /*<<< orphan*/  release_q; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* request ) (void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 struct vfio_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vfio_unbound_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_2__ vfio ; 
 int /*<<< orphan*/  FUNC14 (struct vfio_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct vfio_group*) ; 
 struct vfio_device* FUNC16 (struct vfio_group*,struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct vfio_group*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  woken_wake_function ; 

void *FUNC20(struct device *dev)
{
	FUNC0(wait, woken_wake_function);
	struct vfio_device *device = FUNC3(dev);
	struct vfio_group *group = device->group;
	void *device_data = device->device_data;
	struct vfio_unbound_dev *unbound;
	unsigned int i = 0;
	bool interrupted = false;

	/*
	 * The group exists so long as we have a device reference.  Get
	 * a group reference and use it to scan for the device going away.
	 */
	FUNC15(group);

	/*
	 * When the device is removed from the group, the group suddenly
	 * becomes non-viable; the device has a driver (until the unbind
	 * completes), but it's not present in the group.  This is bad news
	 * for any external users that need to re-acquire a group reference
	 * in order to match and release their existing reference.  To
	 * solve this, we track such devices on the unbound_list to bridge
	 * the gap until they're fully unbound.
	 */
	unbound = FUNC5(sizeof(*unbound), GFP_KERNEL);
	if (unbound) {
		unbound->dev = dev;
		FUNC8(&group->unbound_lock);
		FUNC6(&unbound->unbound_next, &group->unbound_list);
		FUNC9(&group->unbound_lock);
	}
	FUNC1(!unbound);

	FUNC14(device);

	/*
	 * If the device is still present in the group after the above
	 * 'put', then it is in use and we need to request it from the
	 * bus driver.  The driver may in turn need to request the
	 * device from the user.  We send the request on an arbitrary
	 * interval with counter to allow the driver to take escalating
	 * measures to release the device if it has the ability to do so.
	 */
	FUNC2(&vfio.release_q, &wait);

	do {
		device = FUNC16(group, dev);
		if (!device)
			break;

		if (device->ops->request)
			device->ops->request(device_data, i++);

		FUNC14(device);

		if (interrupted) {
			FUNC19(&wait, TASK_UNINTERRUPTIBLE, HZ * 10);
		} else {
			FUNC19(&wait, TASK_INTERRUPTIBLE, HZ * 10);
			if (FUNC11(current)) {
				interrupted = true;
				FUNC4(dev,
					 "Device is currently in use, task"
					 " \"%s\" (%d) "
					 "blocked until device is released",
					 current->comm, FUNC13(current));
			}
		}

	} while (1);

	FUNC10(&vfio.release_q, &wait);
	/*
	 * In order to support multiple devices per group, devices can be
	 * plucked from the group while other devices in the group are still
	 * in use.  The container persists with this group and those remaining
	 * devices still attached.  If the user creates an isolation violation
	 * by binding this device to another driver while the group is still in
	 * use, that's their fault.  However, in the case of removing the last,
	 * or potentially the only, device in the group there can be no other
	 * in-use devices in the group.  The user has done their due diligence
	 * and we should lay no claims to those devices.  In order to do that,
	 * we need to make sure the group is detached from the container.
	 * Without this stall, we're potentially racing with a user process
	 * that may attempt to immediately bind this device to another driver.
	 */
	if (FUNC7(&group->device_list))
		FUNC18(group->container_q, !group->container);

	FUNC17(group);

	return device_data;
}