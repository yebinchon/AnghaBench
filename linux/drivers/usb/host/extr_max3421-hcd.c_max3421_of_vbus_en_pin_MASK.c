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
typedef  void* uint32_t ;
struct max3421_hcd_platform_data {void* vbus_active_level; void* vbus_gpout; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,void*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,void**,int) ; 

__attribute__((used)) static int
FUNC3(struct device *dev, struct max3421_hcd_platform_data *pdata)
{
	int retval;
	uint32_t value[2];

	if (!pdata)
		return -EINVAL;

	retval = FUNC2(dev->of_node, "maxim,vbus-en-pin", value, 2);
	if (retval) {
		FUNC0(dev, "device tree node property 'maxim,vbus-en-pin' is missing\n");
		return retval;
	}
	FUNC1(dev, "property 'maxim,vbus-en-pin' value is <%d %d>\n", value[0], value[1]);

	pdata->vbus_gpout = value[0];
	pdata->vbus_active_level = value[1];

	return 0;
}