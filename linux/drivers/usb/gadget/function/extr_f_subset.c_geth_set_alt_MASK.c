#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_4__* out_ep; TYPE_4__* in_ep; } ;
struct f_gether {TYPE_2__ port; } ;
struct TYPE_7__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int EINVAL ; 
 int FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct usb_function*,TYPE_4__*) ; 
 struct f_gether* FUNC3 (struct usb_function*) ; 
 struct net_device* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_gether		*geth = FUNC3(f);
	struct usb_composite_dev *cdev = f->config->cdev;
	struct net_device	*net;

	/* we know alt == 0, so this is an activation or a reset */

	if (geth->port.in_ep->enabled) {
		FUNC0(cdev, "reset cdc subset\n");
		FUNC5(&geth->port);
	}

	FUNC0(cdev, "init + activate cdc subset\n");
	if (FUNC2(cdev->gadget, f, geth->port.in_ep) ||
	    FUNC2(cdev->gadget, f, geth->port.out_ep)) {
		geth->port.in_ep->desc = NULL;
		geth->port.out_ep->desc = NULL;
		return -EINVAL;
	}

	net = FUNC4(&geth->port);
	return FUNC1(net);
}