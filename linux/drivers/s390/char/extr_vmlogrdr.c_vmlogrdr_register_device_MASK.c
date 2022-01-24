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
struct vmlogrdr_priv_t {struct device* device; int /*<<< orphan*/ * class_device; int /*<<< orphan*/  minor_num; int /*<<< orphan*/  internal_name; } ;
struct device {void (* release ) (struct device*) ;int /*<<< orphan*/  groups; int /*<<< orphan*/ * driver; int /*<<< orphan*/  parent; int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct vmlogrdr_priv_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct vmlogrdr_priv_t*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  iucv_bus ; 
 int /*<<< orphan*/  iucv_root ; 
 scalar_t__ kfree ; 
 struct device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  vmlogrdr_attr_groups ; 
 int /*<<< orphan*/  vmlogrdr_class ; 
 int /*<<< orphan*/  vmlogrdr_driver ; 
 int /*<<< orphan*/  vmlogrdr_major ; 

__attribute__((used)) static int FUNC11(struct vmlogrdr_priv_t *priv)
{
	struct device *dev;
	int ret;

	dev = FUNC9(sizeof(struct device), GFP_KERNEL);
	if (dev) {
		FUNC5(dev, "%s", priv->internal_name);
		dev->bus = &iucv_bus;
		dev->parent = iucv_root;
		dev->driver = &vmlogrdr_driver;
		dev->groups = vmlogrdr_attr_groups;
		FUNC4(dev, priv);
		/*
		 * The release function could be called after the
		 * module has been unloaded. It's _only_ task is to
		 * free the struct. Therefore, we specify kfree()
		 * directly here. (Probably a little bit obfuscating
		 * but legitime ...).
		 */
		dev->release = (void (*)(struct device *))kfree;
	} else
		return -ENOMEM;
	ret = FUNC7(dev);
	if (ret) {
		FUNC10(dev);
		return ret;
	}

	priv->class_device = FUNC6(vmlogrdr_class, dev,
					   FUNC1(vmlogrdr_major,
						 priv->minor_num),
					   priv, "%s", FUNC3(dev));
	if (FUNC0(priv->class_device)) {
		ret = FUNC2(priv->class_device);
		priv->class_device=NULL;
		FUNC8(dev);
		return ret;
	}
	priv->device = dev;
	return 0;
}