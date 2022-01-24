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
struct gasket_sysfs_mapping {size_t attribute_count; int /*<<< orphan*/  mutex; struct gasket_sysfs_attribute* attributes; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct gasket_sysfs_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GASKET_ARRAY_END_MARKER ; 
 size_t GASKET_SYSFS_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,TYPE_2__*) ; 
 struct gasket_sysfs_mapping* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gasket_sysfs_mapping*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct device *device,
				const struct gasket_sysfs_attribute *attrs)
{
	int i;
	int ret;
	struct gasket_sysfs_mapping *mapping = FUNC3(device);

	if (!mapping) {
		FUNC0(device,
			"Creating entries for device without first initializing mapping\n");
		return -EINVAL;
	}

	FUNC4(&mapping->mutex);
	for (i = 0; FUNC7(attrs[i].attr.attr.name, GASKET_ARRAY_END_MARKER);
		i++) {
		if (mapping->attribute_count == GASKET_SYSFS_MAX_NODES) {
			FUNC1(device,
				"Maximum number of sysfs nodes reached for device\n");
			FUNC5(&mapping->mutex);
			FUNC6(mapping);
			return -ENOMEM;
		}

		ret = FUNC2(device, &attrs[i].attr);
		if (ret) {
			FUNC0(device, "Unable to create device entries\n");
			FUNC5(&mapping->mutex);
			FUNC6(mapping);
			return ret;
		}

		mapping->attributes[mapping->attribute_count] = attrs[i];
		++mapping->attribute_count;
	}

	FUNC5(&mapping->mutex);
	FUNC6(mapping);
	return 0;
}