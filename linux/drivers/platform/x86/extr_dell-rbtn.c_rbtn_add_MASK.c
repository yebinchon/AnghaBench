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
struct rbtn_data {int type; } ;
struct acpi_device {struct rbtn_data* driver_data; int /*<<< orphan*/  dev; } ;
typedef  enum rbtn_type { ____Placeholder_rbtn_type } rbtn_type ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  RBTN_SLIDER 129 
#define  RBTN_TOGGLE 128 
 int RBTN_UNKNOWN ; 
 int /*<<< orphan*/  auto_remove_rfkill ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct rbtn_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct acpi_device*,int) ; 
 TYPE_1__ rbtn_chain_head ; 
 int FUNC4 (struct acpi_device*) ; 
 int FUNC5 (struct rbtn_data*) ; 
 int FUNC6 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct rbtn_data *rbtn_data;
	enum rbtn_type type;
	int ret = 0;

	type = FUNC4(device);
	if (type == RBTN_UNKNOWN) {
		FUNC1(&device->dev, "Unknown device type\n");
		return -EINVAL;
	}

	ret = FUNC3(device, true);
	if (ret < 0) {
		FUNC0(&device->dev, "Cannot enable device\n");
		return ret;
	}

	rbtn_data = FUNC2(&device->dev, sizeof(*rbtn_data), GFP_KERNEL);
	if (!rbtn_data)
		return -ENOMEM;

	rbtn_data->type = type;
	device->driver_data = rbtn_data;

	switch (rbtn_data->type) {
	case RBTN_TOGGLE:
		ret = FUNC5(rbtn_data);
		break;
	case RBTN_SLIDER:
		if (auto_remove_rfkill && rbtn_chain_head.head)
			ret = 0;
		else
			ret = FUNC6(device);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;

}