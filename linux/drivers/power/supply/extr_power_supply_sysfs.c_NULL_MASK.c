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
struct power_supply {TYPE_1__* desc; } ;
struct kobj_uevent_env {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int num_properties; size_t* properties; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct kobj_uevent_env*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct power_supply* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_attribute* power_supply_attrs ; 
 int FUNC7 (struct device*,struct device_attribute*,char*) ; 
 char* FUNC8 (char*,char) ; 

int FUNC9(struct device *dev, struct kobj_uevent_env *env)
{
	struct power_supply *psy = FUNC2(dev);
	int ret = 0, j;
	char *prop_buf;
	char *attrname;

	if (!psy || !psy->desc) {
		FUNC1(dev, "No power supply yet\n");
		return ret;
	}

	ret = FUNC0(env, "POWER_SUPPLY_NAME=%s", psy->desc->name);
	if (ret)
		return ret;

	prop_buf = (char *)FUNC4(GFP_KERNEL);
	if (!prop_buf)
		return -ENOMEM;

	for (j = 0; j < psy->desc->num_properties; j++) {
		struct device_attribute *attr;
		char *line;

		attr = &power_supply_attrs[psy->desc->properties[j]];

		ret = FUNC7(dev, attr, prop_buf);
		if (ret == -ENODEV || ret == -ENODATA) {
			/* When a battery is absent, we expect -ENODEV. Don't abort;
			   send the uevent with at least the the PRESENT=0 property */
			ret = 0;
			continue;
		}

		if (ret < 0)
			goto out;

		line = FUNC8(prop_buf, '\n');
		if (line)
			*line = 0;

		attrname = FUNC6(attr->attr.name, GFP_KERNEL);
		if (!attrname) {
			ret = -ENOMEM;
			goto out;
		}

		ret = FUNC0(env, "POWER_SUPPLY_%s=%s", attrname, prop_buf);
		FUNC5(attrname);
		if (ret)
			goto out;
	}

out:
	FUNC3((unsigned long)prop_buf);

	return ret;
}