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
struct gasket_internal_desc {int /*<<< orphan*/  class; struct gasket_driver_desc* driver_desc; } ;
struct gasket_driver_desc {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  devt; int /*<<< orphan*/  device; int /*<<< orphan*/  name; } ;
struct gasket_dev {TYPE_1__ dev_info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gasket_internal_desc*,struct device*,struct gasket_dev**) ; 
 int /*<<< orphan*/  FUNC5 (struct gasket_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct gasket_dev*) ; 
 int /*<<< orphan*/  gasket_sysfs_generic_attrs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *parent_dev,
			       struct gasket_internal_desc *internal_desc,
			       struct gasket_dev **gasket_devp)
{
	int ret;
	struct gasket_dev *gasket_dev;
	const struct gasket_driver_desc *driver_desc =
	    internal_desc->driver_desc;

	ret = FUNC4(internal_desc, parent_dev, &gasket_dev);
	if (ret)
		return ret;
	if (FUNC0(gasket_dev->dev_info.device)) {
		FUNC2(parent_dev, "Cannot create %s device %s [ret = %ld]\n",
			driver_desc->name, gasket_dev->dev_info.name,
			FUNC1(gasket_dev->dev_info.device));
		ret = -ENODEV;
		goto free_gasket_dev;
	}

	ret = FUNC7(gasket_dev->dev_info.device,
					  gasket_dev);
	if (ret)
		goto remove_device;

	ret = FUNC6(gasket_dev->dev_info.device,
					  gasket_sysfs_generic_attrs);
	if (ret)
		goto remove_sysfs_mapping;

	*gasket_devp = gasket_dev;
	return 0;

remove_sysfs_mapping:
	FUNC8(gasket_dev->dev_info.device);
remove_device:
	FUNC3(internal_desc->class, gasket_dev->dev_info.devt);
free_gasket_dev:
	FUNC5(gasket_dev);
	return ret;
}