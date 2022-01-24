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
struct usb_rx {int (* callback ) (void*,void*,int,int) ;int /*<<< orphan*/  rx_submit_list; int /*<<< orphan*/  urb; int /*<<< orphan*/  buf; struct rx_cxt* rx; void* index; void* cb_data; } ;
struct usb_device {int dummy; } ;
struct rx_cxt {int /*<<< orphan*/  submit_lock; int /*<<< orphan*/  rx_submit_list; } ;
struct lte_udev {int (* rx_cb ) (void*,void*,int,int) ;struct usb_device* usbdev; struct rx_cxt rx; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KERNEL_THREAD ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  gdm_usb_rcv_complete ; 
 struct usb_rx* FUNC0 (struct rx_cxt*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct rx_cxt*,struct usb_rx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_rx*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *priv_dev,
			int (*cb)(void *cb_data,
				  void *data, int len, int context),
			void *cb_data,
			int context)
{
	struct lte_udev *udev = priv_dev;
	struct usb_device *usbdev = udev->usbdev;
	struct rx_cxt *rx = &udev->rx;
	struct usb_rx *r;
	int no_spc;
	int ret;
	unsigned long flags;

	if (!udev->usbdev) {
		FUNC3("invalid device\n");
		return -ENODEV;
	}

	r = FUNC0(rx, &no_spc);
	if (!r) {
		FUNC3("Out of Memory\n");
		return -ENOMEM;
	}

	udev->rx_cb = cb;
	r->callback = cb;
	r->cb_data = cb_data;
	r->index = (void *)udev;
	r->rx = rx;

	FUNC7(r->urb,
			  usbdev,
			  FUNC8(usbdev, 0x83),
			  r->buf,
			  RX_BUF_SIZE,
			  gdm_usb_rcv_complete,
			  r);

	FUNC5(&rx->submit_lock, flags);
	FUNC1(&r->rx_submit_list, &rx->rx_submit_list);
	FUNC6(&rx->submit_lock, flags);

	if (context == KERNEL_THREAD)
		ret = FUNC9(r->urb, GFP_KERNEL);
	else
		ret = FUNC9(r->urb, GFP_ATOMIC);

	if (ret) {
		FUNC5(&rx->submit_lock, flags);
		FUNC2(&r->rx_submit_list);
		FUNC6(&rx->submit_lock, flags);

		FUNC3("usb_submit_urb failed (%p)\n", r);
		FUNC4(rx, r);
	}

	return ret;
}