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
struct usb_role_switch {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 struct usb_role_switch* FUNC2 (struct device*) ; 
 int FUNC3 (struct usb_role_switch*,int) ; 
 int /*<<< orphan*/  usb_roles ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t size)
{
	struct usb_role_switch *sw = FUNC2(dev);
	int ret;

	ret = FUNC1(usb_roles, buf);
	if (ret < 0) {
		bool res;

		/* Extra check if the user wants to disable the switch */
		ret = FUNC0(buf, &res);
		if (ret || res)
			return -EINVAL;
	}

	ret = FUNC3(sw, ret);
	if (ret)
		return ret;

	return size;
}