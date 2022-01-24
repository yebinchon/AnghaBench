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
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct usb_role_switch* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ,struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  role_class ; 
 struct usb_role_switch* FUNC4 (struct device*) ; 

__attribute__((used)) static struct usb_role_switch *
FUNC5(struct fwnode_handle *fwnode)
{
	struct fwnode_handle *parent = FUNC2(fwnode);
	struct device *dev;

	if (!parent || !FUNC3(parent, "usb-role-switch"))
		return NULL;

	dev = FUNC1(role_class, parent);
	return dev ? FUNC4(dev) : FUNC0(-EPROBE_DEFER);
}