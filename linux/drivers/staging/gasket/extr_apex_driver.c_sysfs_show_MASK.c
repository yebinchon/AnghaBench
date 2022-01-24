#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct TYPE_3__ {scalar_t__ attr_type; } ;
struct gasket_sysfs_attribute {TYPE_1__ data; } ;
struct gasket_page_table {int dummy; } ;
struct gasket_dev {int /*<<< orphan*/  dev; struct gasket_page_table** page_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum sysfs_attribute_type { ____Placeholder_sysfs_attribute_type } sysfs_attribute_type ;

/* Variables and functions */
#define  ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES 130 
#define  ATTR_KERNEL_HIB_PAGE_TABLE_SIZE 129 
#define  ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE 128 
 int ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_page_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct gasket_page_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct gasket_page_table*) ; 
 struct gasket_sysfs_attribute* FUNC5 (struct device*,struct device_attribute*) ; 
 struct gasket_dev* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct gasket_sysfs_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct gasket_dev*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *device, struct device_attribute *attr,
			  char *buf)
{
	int ret;
	struct gasket_dev *gasket_dev;
	struct gasket_sysfs_attribute *gasket_attr;
	enum sysfs_attribute_type type;
	struct gasket_page_table *gpt;
	uint val;

	gasket_dev = FUNC6(device);
	if (!gasket_dev) {
		FUNC1(device, "No Apex device sysfs mapping found\n");
		return -ENODEV;
	}

	gasket_attr = FUNC5(device, attr);
	if (!gasket_attr) {
		FUNC1(device, "No Apex device sysfs attr data found\n");
		FUNC8(device, gasket_dev);
		return -ENODEV;
	}

	type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
	gpt = gasket_dev->page_table[0];
	switch (type) {
	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
		val = FUNC3(gpt);
		break;
	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
		val = FUNC4(gpt);
		break;
	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
		val = FUNC2(gpt);
		break;
	default:
		FUNC0(gasket_dev->dev, "Unknown attribute: %s\n",
			attr->attr.name);
		ret = 0;
		goto exit;
	}
	ret = FUNC9(buf, PAGE_SIZE, "%u\n", val);
exit:
	FUNC7(device, gasket_attr);
	FUNC8(device, gasket_dev);
	return ret;
}