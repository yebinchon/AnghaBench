#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int is_zlp_ok; int /*<<< orphan*/  cdc_filter; TYPE_2__* out_ep; TYPE_2__* in_ep; } ;
struct f_rndis {unsigned int ctrl_id; unsigned int data_id; TYPE_4__ port; int /*<<< orphan*/  params; TYPE_2__* notify; } ;
struct TYPE_8__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_composite_dev*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct usb_function*,TYPE_2__*) ; 
 struct f_rndis* FUNC5 (struct usb_function*) ; 
 struct net_device* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_rndis		*rndis = FUNC5(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* we know alt == 0 */

	if (intf == rndis->ctrl_id) {
		FUNC3(cdev, "reset rndis control %d\n", intf);
		FUNC9(rndis->notify);

		if (!rndis->notify->desc) {
			FUNC3(cdev, "init rndis ctrl %d\n", intf);
			if (FUNC4(cdev->gadget, f, rndis->notify))
				goto fail;
		}
		FUNC10(rndis->notify);

	} else if (intf == rndis->data_id) {
		struct net_device	*net;

		if (rndis->port.in_ep->enabled) {
			FUNC0(cdev, "reset rndis\n");
			FUNC7(&rndis->port);
		}

		if (!rndis->port.in_ep->desc || !rndis->port.out_ep->desc) {
			FUNC0(cdev, "init rndis\n");
			if (FUNC4(cdev->gadget, f,
					       rndis->port.in_ep) ||
			    FUNC4(cdev->gadget, f,
					       rndis->port.out_ep)) {
				rndis->port.in_ep->desc = NULL;
				rndis->port.out_ep->desc = NULL;
				goto fail;
			}
		}

		/* Avoid ZLPs; they can be troublesome. */
		rndis->port.is_zlp_ok = false;

		/* RNDIS should be in the "RNDIS uninitialized" state,
		 * either never activated or after rndis_uninit().
		 *
		 * We don't want data to flow here until a nonzero packet
		 * filter is set, at which point it enters "RNDIS data
		 * initialized" state ... but we do want the endpoints
		 * to be activated.  It's a strange little state.
		 *
		 * REVISIT the RNDIS gadget code has done this wrong for a
		 * very long time.  We need another call to the link layer
		 * code -- gether_updown(...bool) maybe -- to do it right.
		 */
		rndis->port.cdc_filter = 0;

		FUNC0(cdev, "RNDIS RX/TX early activation ... \n");
		net = FUNC6(&rndis->port);
		if (FUNC1(net))
			return FUNC2(net);

		FUNC8(rndis->params, net,
				&rndis->port.cdc_filter);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}