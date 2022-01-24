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
struct nd_region {struct device* ns_seed; int /*<<< orphan*/  id; int /*<<< orphan*/  ns_ida; int /*<<< orphan*/  dev; } ;
struct nd_namespace_pmem {int id; } ;
struct nd_namespace_blk {int id; } ;
struct device {int /*<<< orphan*/  groups; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  ND_DEVICE_NAMESPACE_BLK 130 
#define  ND_DEVICE_NAMESPACE_IO 129 
#define  ND_DEVICE_NAMESPACE_PMEM 128 
 struct device** FUNC0 (struct nd_region*) ; 
 struct device** FUNC1 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC6 (struct device**) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  nd_namespace_attribute_groups ; 
 int FUNC8 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct nd_namespace_blk* FUNC12 (struct device*) ; 
 struct nd_namespace_pmem* FUNC13 (struct device*) ; 

int FUNC14(struct nd_region *nd_region, int *err)
{
	struct device **devs = NULL;
	int i, rc = 0, type;

	*err = 0;
	FUNC9(&nd_region->dev);
	rc = FUNC5(nd_region);
	if (rc) {
		FUNC10(&nd_region->dev);
		return rc;
	}

	type = FUNC8(nd_region);
	switch (type) {
	case ND_DEVICE_NAMESPACE_IO:
		devs = FUNC0(nd_region);
		break;
	case ND_DEVICE_NAMESPACE_PMEM:
	case ND_DEVICE_NAMESPACE_BLK:
		devs = FUNC1(nd_region);
		break;
	default:
		break;
	}
	FUNC10(&nd_region->dev);

	if (!devs)
		return -ENODEV;

	for (i = 0; devs[i]; i++) {
		struct device *dev = devs[i];
		int id;

		if (type == ND_DEVICE_NAMESPACE_BLK) {
			struct nd_namespace_blk *nsblk;

			nsblk = FUNC12(dev);
			id = FUNC4(&nd_region->ns_ida, 0, 0,
					GFP_KERNEL);
			nsblk->id = id;
		} else if (type == ND_DEVICE_NAMESPACE_PMEM) {
			struct nd_namespace_pmem *nspm;

			nspm = FUNC13(dev);
			id = FUNC4(&nd_region->ns_ida, 0, 0,
					GFP_KERNEL);
			nspm->id = id;
		} else
			id = i;

		if (id < 0)
			break;
		FUNC2(dev, "namespace%d.%d", nd_region->id, id);
		dev->groups = nd_namespace_attribute_groups;
		FUNC7(dev);
	}
	if (i)
		nd_region->ns_seed = devs[0];

	if (devs[i]) {
		int j;

		for (j = i; devs[j]; j++) {
			struct device *dev = devs[j];

			FUNC3(dev);
			FUNC11(dev);
		}
		*err = j - i;
		/*
		 * All of the namespaces we tried to register failed, so
		 * fail region activation.
		 */
		if (*err == 0)
			rc = -ENODEV;
	}
	FUNC6(devs);

	if (rc == -ENODEV)
		return rc;

	return i;
}