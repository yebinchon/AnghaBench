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
struct TYPE_9__ {int /*<<< orphan*/  cdc_filter; int /*<<< orphan*/  is_zlp_ok; TYPE_2__* out_ep; TYPE_2__* in_ep; } ;
struct f_ecm {unsigned int ctrl_id; unsigned int data_id; TYPE_4__ port; TYPE_2__* notify; } ;
struct TYPE_8__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*) ; 
 int /*<<< orphan*/  DEFAULT_FILTER ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_composite_dev*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct usb_function*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct f_ecm*) ; 
 struct f_ecm* FUNC6 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_ecm		*ecm = FUNC6(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* Control interface has only altsetting 0 */
	if (intf == ecm->ctrl_id) {
		if (alt != 0)
			goto fail;

		FUNC3(cdev, "reset ecm control %d\n", intf);
		FUNC10(ecm->notify);
		if (!(ecm->notify->desc)) {
			FUNC3(cdev, "init ecm ctrl %d\n", intf);
			if (FUNC4(cdev->gadget, f, ecm->notify))
				goto fail;
		}
		FUNC11(ecm->notify);

	/* Data interface has two altsettings, 0 and 1 */
	} else if (intf == ecm->data_id) {
		if (alt > 1)
			goto fail;

		if (ecm->port.in_ep->enabled) {
			FUNC0(cdev, "reset ecm\n");
			FUNC9(&ecm->port);
		}

		if (!ecm->port.in_ep->desc ||
		    !ecm->port.out_ep->desc) {
			FUNC0(cdev, "init ecm\n");
			if (FUNC4(cdev->gadget, f,
					       ecm->port.in_ep) ||
			    FUNC4(cdev->gadget, f,
					       ecm->port.out_ep)) {
				ecm->port.in_ep->desc = NULL;
				ecm->port.out_ep->desc = NULL;
				goto fail;
			}
		}

		/* CDC Ethernet only sends data in non-default altsettings.
		 * Changing altsettings resets filters, statistics, etc.
		 */
		if (alt == 1) {
			struct net_device	*net;

			/* Enable zlps by default for ECM conformance;
			 * override for musb_hdrc (avoids txdma ovhead).
			 */
			ecm->port.is_zlp_ok =
				FUNC7(cdev->gadget);
			ecm->port.cdc_filter = DEFAULT_FILTER;
			FUNC0(cdev, "activate ecm\n");
			net = FUNC8(&ecm->port);
			if (FUNC1(net))
				return FUNC2(net);
		}

		/* NOTE this can be a minor disagreement with the ECM spec,
		 * which says speed notifications will "always" follow
		 * connection notifications.  But we allow one connect to
		 * follow another (if the first is in flight), and instead
		 * just guarantee that a speed notification is always sent.
		 */
		FUNC5(ecm);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}