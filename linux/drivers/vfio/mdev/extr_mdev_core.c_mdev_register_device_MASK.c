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
struct mdev_parent_ops {int /*<<< orphan*/  supported_type_groups; int /*<<< orphan*/  remove; int /*<<< orphan*/  create; } ;
struct mdev_parent {int /*<<< orphan*/  next; struct mdev_parent_ops const* ops; struct device* dev; int /*<<< orphan*/  unreg_sem; int /*<<< orphan*/  ref; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 struct mdev_parent* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__,struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mdev_parent* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ mdev_bus_compat_class ; 
 int /*<<< orphan*/  FUNC11 (struct mdev_parent*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct mdev_parent*) ; 
 int /*<<< orphan*/  parent_list ; 
 int /*<<< orphan*/  parent_list_lock ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

int FUNC16(struct device *dev, const struct mdev_parent_ops *ops)
{
	int ret;
	struct mdev_parent *parent;
	char *env_string = "MDEV_STATE=registered";
	char *envp[] = { env_string, NULL };

	/* check for mandatory ops */
	if (!ops || !ops->create || !ops->remove || !ops->supported_type_groups)
		return -EINVAL;

	dev = FUNC5(dev);
	if (!dev)
		return -EINVAL;

	FUNC12(&parent_list_lock);

	/* Check for duplicate */
	parent = FUNC0(dev);
	if (parent) {
		parent = NULL;
		ret = -EEXIST;
		goto add_dev_err;
	}

	parent = FUNC9(sizeof(*parent), GFP_KERNEL);
	if (!parent) {
		ret = -ENOMEM;
		goto add_dev_err;
	}

	FUNC8(&parent->ref);
	FUNC6(&parent->unreg_sem);

	parent->dev = dev;
	parent->ops = ops;

	if (!mdev_bus_compat_class) {
		mdev_bus_compat_class = FUNC2("mdev_bus");
		if (!mdev_bus_compat_class) {
			ret = -ENOMEM;
			goto add_dev_err;
		}
	}

	ret = FUNC14(parent);
	if (ret)
		goto add_dev_err;

	ret = FUNC1(mdev_bus_compat_class, dev, NULL);
	if (ret)
		FUNC4(dev, "Failed to create compatibility class link\n");

	FUNC10(&parent->next, &parent_list);
	FUNC13(&parent_list_lock);

	FUNC3(dev, "MDEV: Registered\n");
	FUNC7(&dev->kobj, KOBJ_CHANGE, envp);

	return 0;

add_dev_err:
	FUNC13(&parent_list_lock);
	if (parent)
		FUNC11(parent);
	else
		FUNC15(dev);
	return ret;
}