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
typedef  int /*<<< orphan*/  ulong ;
struct gasket_sysfs_mapping {struct gasket_dev* gasket_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  bar; } ;
struct TYPE_4__ {TYPE_1__ bar_address; } ;
struct gasket_sysfs_attribute {int /*<<< orphan*/  (* write_callback ) (struct gasket_dev*,struct gasket_sysfs_attribute*,int /*<<< orphan*/ ) ;TYPE_2__ data; } ;
struct gasket_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gasket_sysfs_attribute* FUNC2 (struct device*,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct gasket_sysfs_attribute*) ; 
 struct gasket_sysfs_mapping* FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gasket_sysfs_mapping*) ; 
 int /*<<< orphan*/  FUNC7 (struct gasket_dev*,struct gasket_sysfs_attribute*,int /*<<< orphan*/ ) ; 

ssize_t FUNC8(struct device *device,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	ulong parsed_value = 0;
	struct gasket_sysfs_mapping *mapping;
	struct gasket_dev *gasket_dev;
	struct gasket_sysfs_attribute *gasket_attr;

	if (count < 3 || buf[0] != '0' || buf[1] != 'x') {
		FUNC0(device,
			"sysfs register write format: \"0x<hex value>\"\n");
		return -EINVAL;
	}

	if (FUNC5(buf, 16, &parsed_value) != 0) {
		FUNC0(device,
			"Unable to parse input as 64-bit hex value: %s\n", buf);
		return -EINVAL;
	}

	mapping = FUNC4(device);
	if (!mapping) {
		FUNC0(device, "Device driver may have been removed\n");
		return 0;
	}

	gasket_dev = mapping->gasket_dev;
	if (!gasket_dev) {
		FUNC0(device, "Device driver may have been removed\n");
		return 0;
	}

	gasket_attr = FUNC2(device, attr);
	if (!gasket_attr) {
		FUNC6(mapping);
		return count;
	}

	FUNC1(gasket_dev, parsed_value,
			    gasket_attr->data.bar_address.bar,
			    gasket_attr->data.bar_address.offset);

	if (gasket_attr->write_callback)
		gasket_attr->write_callback(gasket_dev, gasket_attr,
					    parsed_value);

	FUNC3(device, gasket_attr);
	FUNC6(mapping);
	return count;
}