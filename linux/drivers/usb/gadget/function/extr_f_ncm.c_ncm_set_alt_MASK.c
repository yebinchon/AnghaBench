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
struct f_ncm {unsigned int ctrl_id; unsigned int data_id; int timer_stopping; int /*<<< orphan*/  lock; struct net_device* netdev; TYPE_4__ port; TYPE_2__* notify; } ;
struct TYPE_8__ {int /*<<< orphan*/ * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,...) ; 
 int /*<<< orphan*/  DEFAULT_FILTER ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct usb_function*,TYPE_2__*) ; 
 struct f_ncm* FUNC4 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct f_ncm*) ; 
 int /*<<< orphan*/  FUNC9 (struct f_ncm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct usb_function *f, unsigned intf, unsigned alt)
{
	struct f_ncm		*ncm = FUNC4(f);
	struct usb_composite_dev *cdev = f->config->cdev;

	/* Control interface has only altsetting 0 */
	if (intf == ncm->ctrl_id) {
		if (alt != 0)
			goto fail;

		FUNC0(cdev, "reset ncm control %d\n", intf);
		FUNC12(ncm->notify);

		if (!(ncm->notify->desc)) {
			FUNC0(cdev, "init ncm ctrl %d\n", intf);
			if (FUNC3(cdev->gadget, f, ncm->notify))
				goto fail;
		}
		FUNC13(ncm->notify);

	/* Data interface has two altsettings, 0 and 1 */
	} else if (intf == ncm->data_id) {
		if (alt > 1)
			goto fail;

		if (ncm->port.in_ep->enabled) {
			FUNC0(cdev, "reset ncm\n");
			ncm->timer_stopping = true;
			ncm->netdev = NULL;
			FUNC7(&ncm->port);
			FUNC9(ncm);
		}

		/*
		 * CDC Network only sends data in non-default altsettings.
		 * Changing altsettings resets filters, statistics, etc.
		 */
		if (alt == 1) {
			struct net_device	*net;

			if (!ncm->port.in_ep->desc ||
			    !ncm->port.out_ep->desc) {
				FUNC0(cdev, "init ncm\n");
				if (FUNC3(cdev->gadget, f,
						       ncm->port.in_ep) ||
				    FUNC3(cdev->gadget, f,
						       ncm->port.out_ep)) {
					ncm->port.in_ep->desc = NULL;
					ncm->port.out_ep->desc = NULL;
					goto fail;
				}
			}

			/* TODO */
			/* Enable zlps by default for NCM conformance;
			 * override for musb_hdrc (avoids txdma ovhead)
			 */
			ncm->port.is_zlp_ok =
				FUNC5(cdev->gadget);
			ncm->port.cdc_filter = DEFAULT_FILTER;
			FUNC0(cdev, "activate ncm\n");
			net = FUNC6(&ncm->port);
			if (FUNC1(net))
				return FUNC2(net);
			ncm->netdev = net;
			ncm->timer_stopping = false;
		}

		FUNC10(&ncm->lock);
		FUNC8(ncm);
		FUNC11(&ncm->lock);
	} else
		goto fail;

	return 0;
fail:
	return -EINVAL;
}