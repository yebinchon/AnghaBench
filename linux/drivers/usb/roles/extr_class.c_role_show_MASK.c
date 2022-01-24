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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum usb_role { ____Placeholder_usb_role } usb_role ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct usb_role_switch* FUNC1 (struct device*) ; 
 int FUNC2 (struct usb_role_switch*) ; 
 char** usb_roles ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct usb_role_switch *sw = FUNC1(dev);
	enum usb_role role = FUNC2(sw);

	return FUNC0(buf, "%s\n", usb_roles[role]);
}