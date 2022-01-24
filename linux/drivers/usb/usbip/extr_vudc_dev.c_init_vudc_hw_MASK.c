#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ep_list; TYPE_4__* ep0; } ;
struct TYPE_7__ {int /*<<< orphan*/  unusable; int /*<<< orphan*/  reset; int /*<<< orphan*/  shutdown; } ;
struct usbip_device {TYPE_3__ eh_ops; int /*<<< orphan*/  side; int /*<<< orphan*/  status; int /*<<< orphan*/  lock; } ;
struct vudc {int /*<<< orphan*/  tx_waitq; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  urb_queue; int /*<<< orphan*/  lock_tx; int /*<<< orphan*/  lock; TYPE_2__ gadget; struct vep* ep; struct usbip_device ud; } ;
struct TYPE_5__ {int type_control; int dir_out; int dir_in; int type_iso; int type_int; int type_bulk; } ;
struct TYPE_8__ {int max_streams; int /*<<< orphan*/  ep_list; TYPE_1__ caps; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct vep {TYPE_4__ ep; int /*<<< orphan*/  req_queue; TYPE_2__* gadget; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDEV_ST_AVAILABLE ; 
 int /*<<< orphan*/  USBIP_VUDC ; 
 int VIRTUAL_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vep* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vudc*) ; 
 int /*<<< orphan*/  vep_ops ; 
 int /*<<< orphan*/  vudc_device_reset ; 
 int /*<<< orphan*/  vudc_device_unusable ; 
 int /*<<< orphan*/  vudc_shutdown ; 

__attribute__((used)) static int FUNC8(struct vudc *udc)
{
	int i;
	struct usbip_device *ud = &udc->ud;
	struct vep *ep;

	udc->ep = FUNC2(VIRTUAL_ENDPOINTS, sizeof(*udc->ep), GFP_KERNEL);
	if (!udc->ep)
		goto nomem_ep;

	FUNC0(&udc->gadget.ep_list);

	/* create ep0 and 15 in, 15 out general purpose eps */
	for (i = 0; i < VIRTUAL_ENDPOINTS; ++i) {
		int is_out = i % 2;
		int num = (i + 1) / 2;

		ep = &udc->ep[i];

		FUNC5(ep->name, "ep%d%s", num,
			i ? (is_out ? "out" : "in") : "");
		ep->ep.name = ep->name;

		ep->ep.ops = &vep_ops;

		FUNC6(&ep->ep, ~0);
		ep->ep.max_streams = 16;
		ep->gadget = &udc->gadget;
		FUNC0(&ep->req_queue);

		if (i == 0) {
			/* ep0 */
			ep->ep.caps.type_control = true;
			ep->ep.caps.dir_out = true;
			ep->ep.caps.dir_in = true;

			udc->gadget.ep0 = &ep->ep;
		} else {
			/* All other eps */
			ep->ep.caps.type_iso = true;
			ep->ep.caps.type_int = true;
			ep->ep.caps.type_bulk = true;

			if (is_out)
				ep->ep.caps.dir_out = true;
			else
				ep->ep.caps.dir_in = true;

			FUNC3(&ep->ep.ep_list, &udc->gadget.ep_list);
		}
	}

	FUNC4(&udc->lock);
	FUNC4(&udc->lock_tx);
	FUNC0(&udc->urb_queue);
	FUNC0(&udc->tx_queue);
	FUNC1(&udc->tx_waitq);

	FUNC4(&ud->lock);
	ud->status = SDEV_ST_AVAILABLE;
	ud->side = USBIP_VUDC;

	ud->eh_ops.shutdown = vudc_shutdown;
	ud->eh_ops.reset    = vudc_device_reset;
	ud->eh_ops.unusable = vudc_device_unusable;

	FUNC7(udc);
	return 0;

nomem_ep:
		return -ENOMEM;
}