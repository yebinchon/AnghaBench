#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {TYPE_4__* gadget; } ;
struct TYPE_7__ {TYPE_5__* in; TYPE_5__* out; } ;
struct f_obex {unsigned int ctrl_id; unsigned int data_id; unsigned int cur_alt; int /*<<< orphan*/  port_num; TYPE_2__ port; } ;
struct TYPE_9__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_4__*,struct usb_function*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct f_obex* FUNC2 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_obex		*obex = FUNC2(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	if (intf == obex->ctrl_id) {
		if (alt != 0)
			goto fail;
		/* NOP */
		FUNC1(&cdev->gadget->dev,
			"reset obex ttyGS%d control\n", obex->port_num);

	} else if (intf == obex->data_id) {
		if (alt > 1)
			goto fail;

		if (obex->port.in->enabled) {
			FUNC1(&cdev->gadget->dev,
				"reset obex ttyGS%d\n", obex->port_num);
			FUNC4(&obex->port);
		}

		if (!obex->port.in->desc || !obex->port.out->desc) {
			FUNC1(&cdev->gadget->dev,
				"init obex ttyGS%d\n", obex->port_num);
			if (FUNC0(cdev->gadget, f,
					       obex->port.in) ||
			    FUNC0(cdev->gadget, f,
					       obex->port.out)) {
				obex->port.out->desc = NULL;
				obex->port.in->desc = NULL;
				goto fail;
			}
		}

		if (alt == 1) {
			FUNC1(&cdev->gadget->dev,
				"activate obex ttyGS%d\n", obex->port_num);
			FUNC3(&obex->port, obex->port_num);
		}

	} else
		goto fail;

	obex->cur_alt = alt;

	return 0;

fail:
	return -EINVAL;
}