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
struct vfio_group {scalar_t__ kvm; int /*<<< orphan*/  notifier; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long VFIO_GROUP_NOTIFY_SET_KVM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int FUNC2 (struct vfio_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC4(struct vfio_group *group,
					unsigned long *events,
					struct notifier_block *nb)
{
	int ret;
	bool set_kvm = false;

	if (*events & VFIO_GROUP_NOTIFY_SET_KVM)
		set_kvm = true;

	/* clear known events */
	*events &= ~VFIO_GROUP_NOTIFY_SET_KVM;

	/* refuse to continue if still events remaining */
	if (*events)
		return -EINVAL;

	ret = FUNC2(group);
	if (ret)
		return -EINVAL;

	ret = FUNC1(&group->notifier, nb);

	/*
	 * The attaching of kvm and vfio_group might already happen, so
	 * here we replay once upon registration.
	 */
	if (!ret && set_kvm && group->kvm)
		FUNC0(&group->notifier,
					VFIO_GROUP_NOTIFY_SET_KVM, group->kvm);

	FUNC3(group);

	return ret;
}