#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_role_switch_desc {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  get; scalar_t__ set; int /*<<< orphan*/  udc; int /*<<< orphan*/  usb3_port; int /*<<< orphan*/  usb2_port; int /*<<< orphan*/  allow_userspace_control; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; int /*<<< orphan*/  class; int /*<<< orphan*/  fwnode; struct device* parent; } ;
struct usb_role_switch {TYPE_1__ dev; int /*<<< orphan*/  get; scalar_t__ set; int /*<<< orphan*/  udc; int /*<<< orphan*/  usb3_port; int /*<<< orphan*/  usb2_port; int /*<<< orphan*/  allow_userspace_control; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct usb_role_switch* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct usb_role_switch* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  role_class ; 
 int /*<<< orphan*/  usb_role_dev_type ; 

struct usb_role_switch *
FUNC7(struct device *parent,
			 const struct usb_role_switch_desc *desc)
{
	struct usb_role_switch *sw;
	int ret;

	if (!desc || !desc->set)
		return FUNC0(-EINVAL);

	sw = FUNC4(sizeof(*sw), GFP_KERNEL);
	if (!sw)
		return FUNC0(-ENOMEM);

	FUNC5(&sw->lock);

	sw->allow_userspace_control = desc->allow_userspace_control;
	sw->usb2_port = desc->usb2_port;
	sw->usb3_port = desc->usb3_port;
	sw->udc = desc->udc;
	sw->set = desc->set;
	sw->get = desc->get;

	sw->dev.parent = parent;
	sw->dev.fwnode = desc->fwnode;
	sw->dev.class = role_class;
	sw->dev.type = &usb_role_dev_type;
	FUNC2(&sw->dev, "%s-role-switch", FUNC1(parent));

	ret = FUNC3(&sw->dev);
	if (ret) {
		FUNC6(&sw->dev);
		return FUNC0(ret);
	}

	/* TODO: Symlinks for the host port and the device controller. */

	return sw;
}