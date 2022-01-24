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
struct gasket_internal_desc {int /*<<< orphan*/  class; struct gasket_dev** devs; struct gasket_driver_desc* driver_desc; } ;
struct gasket_driver_desc {char* name; scalar_t__ minor; int /*<<< orphan*/  major; int /*<<< orphan*/  num_page_tables; } ;
struct gasket_cdev_info {struct gasket_dev* gasket_dev_ptr; int /*<<< orphan*/  name; int /*<<< orphan*/  devt; int /*<<< orphan*/  device; } ;
struct gasket_dev {int dev_idx; struct gasket_cdev_info dev_info; int /*<<< orphan*/  num_page_tables; int /*<<< orphan*/  dev; int /*<<< orphan*/  kobj_name; struct gasket_internal_desc* internal_desc; int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GASKET_NAME_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct gasket_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gasket_internal_desc*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct gasket_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC10(struct gasket_internal_desc *internal_desc,
			    struct device *parent, struct gasket_dev **pdev)
{
	int dev_idx;
	const struct gasket_driver_desc *driver_desc =
		internal_desc->driver_desc;
	struct gasket_dev *gasket_dev;
	struct gasket_cdev_info *dev_info;
	const char *parent_name = FUNC1(parent);

	FUNC7("Allocating a Gasket device, parent %s.\n", parent_name);

	*pdev = NULL;

	dev_idx = FUNC3(internal_desc, parent_name);
	if (dev_idx < 0)
		return dev_idx;

	gasket_dev = *pdev = FUNC5(sizeof(*gasket_dev), GFP_KERNEL);
	if (!gasket_dev) {
		FUNC8("no memory for device, parent %s\n", parent_name);
		return -ENOMEM;
	}
	internal_desc->devs[dev_idx] = gasket_dev;

	FUNC6(&gasket_dev->mutex);

	gasket_dev->internal_desc = internal_desc;
	gasket_dev->dev_idx = dev_idx;
	FUNC9(gasket_dev->kobj_name, GASKET_NAME_MAX, "%s", parent_name);
	gasket_dev->dev = FUNC4(parent);
	/* gasket_bar_data is uninitialized. */
	gasket_dev->num_page_tables = driver_desc->num_page_tables;
	/* max_page_table_size and *page table are uninit'ed */
	/* interrupt_data is not initialized. */
	/* status is 0, or GASKET_STATUS_DEAD */

	dev_info = &gasket_dev->dev_info;
	FUNC9(dev_info->name, GASKET_NAME_MAX, "%s_%u", driver_desc->name,
		 gasket_dev->dev_idx);
	dev_info->devt =
		FUNC0(driver_desc->major, driver_desc->minor +
		      gasket_dev->dev_idx);
	dev_info->device =
		FUNC2(internal_desc->class, parent, dev_info->devt,
			      gasket_dev, dev_info->name);

	/* cdev has not yet been added; cdev_added is 0 */
	dev_info->gasket_dev_ptr = gasket_dev;
	/* ownership is all 0, indicating no owner or opens. */

	return 0;
}