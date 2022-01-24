#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_18__ {TYPE_2__ dev; int /*<<< orphan*/  speed; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  name; int /*<<< orphan*/ * ep0; int /*<<< orphan*/ * ops; int /*<<< orphan*/  ep_list; } ;
struct TYPE_13__ {int /*<<< orphan*/  ep; } ;
struct ast_vhub_dev {unsigned int index; int registered; TYPE_4__* port_dev; TYPE_5__ gadget; TYPE_12__ ep0; scalar_t__ regs; int /*<<< orphan*/  name; struct ast_vhub* vhub; } ;
struct ast_vhub {TYPE_3__* pdev; scalar_t__ force_usb1; scalar_t__ regs; TYPE_1__* ports; } ;
struct TYPE_17__ {struct device* parent; int /*<<< orphan*/  release; } ;
struct TYPE_16__ {struct device dev; } ;
struct TYPE_14__ {struct ast_vhub_dev dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  ast_vhub_dev_release ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub*,TYPE_12__*,struct ast_vhub_dev*) ; 
 int /*<<< orphan*/  ast_vhub_udc_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_4__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*,TYPE_5__*) ; 

int FUNC11(struct ast_vhub *vhub, unsigned int idx)
{
	struct ast_vhub_dev *d = &vhub->ports[idx].dev;
	struct device *parent = &vhub->pdev->dev;
	int rc;

	d->vhub = vhub;
	d->index = idx;
	d->name = FUNC7(parent, GFP_KERNEL, "port%d", idx+1);
	d->regs = vhub->regs + 0x100 + 0x10 * idx;

	FUNC1(vhub, &d->ep0, d);

	/*
	 * The UDC core really needs us to have separate and uniquely
	 * named "parent" devices for each port so we create a sub device
	 * here for that purpose
	 */
	d->port_dev = FUNC8(sizeof(struct device), GFP_KERNEL);
	if (!d->port_dev)
		return -ENOMEM;
	FUNC6(d->port_dev);
	d->port_dev->release = ast_vhub_dev_release;
	d->port_dev->parent = parent;
	FUNC3(d->port_dev, "%s:p%d", FUNC2(parent), idx + 1);
	rc = FUNC4(d->port_dev);
	if (rc)
		goto fail_add;

	/* Populate gadget */
	FUNC0(&d->gadget.ep_list);
	d->gadget.ops = &ast_vhub_udc_ops;
	d->gadget.ep0 = &d->ep0.ep;
	d->gadget.name = KBUILD_MODNAME;
	if (vhub->force_usb1)
		d->gadget.max_speed = USB_SPEED_FULL;
	else
		d->gadget.max_speed = USB_SPEED_HIGH;
	d->gadget.speed = USB_SPEED_UNKNOWN;
	d->gadget.dev.of_node = vhub->pdev->dev.of_node;

	rc = FUNC10(d->port_dev, &d->gadget);
	if (rc != 0)
		goto fail_udc;
	d->registered = true;

	return 0;
 fail_udc:
	FUNC5(d->port_dev);
 fail_add:
	FUNC9(d->port_dev);

	return rc;
}