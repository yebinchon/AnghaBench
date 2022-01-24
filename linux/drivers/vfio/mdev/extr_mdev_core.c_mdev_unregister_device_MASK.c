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
struct mdev_parent {int /*<<< orphan*/  unreg_sem; int /*<<< orphan*/  next; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 struct mdev_parent* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdev_bus_compat_class ; 
 int /*<<< orphan*/  mdev_device_remove_cb ; 
 int /*<<< orphan*/  FUNC7 (struct mdev_parent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parent_list_lock ; 
 int /*<<< orphan*/  FUNC10 (struct mdev_parent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct device *dev)
{
	struct mdev_parent *parent;
	char *env_string = "MDEV_STATE=unregistered";
	char *envp[] = { env_string, NULL };

	FUNC8(&parent_list_lock);
	parent = FUNC0(dev);

	if (!parent) {
		FUNC9(&parent_list_lock);
		return;
	}
	FUNC2(dev, "MDEV: Unregistering\n");

	FUNC6(&parent->next);
	FUNC9(&parent_list_lock);

	FUNC4(&parent->unreg_sem);

	FUNC1(mdev_bus_compat_class, dev, NULL);

	FUNC3(dev, NULL, mdev_device_remove_cb);

	FUNC10(parent);
	FUNC11(&parent->unreg_sem);

	FUNC7(parent);

	/* We still have the caller's reference to use for the uevent */
	FUNC5(&dev->kobj, KOBJ_CHANGE, envp);
}