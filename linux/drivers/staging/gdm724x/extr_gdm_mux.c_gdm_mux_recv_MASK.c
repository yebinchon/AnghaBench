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
struct usb_device {int dummy; } ;
struct rx_cxt {int /*<<< orphan*/  submit_list_lock; int /*<<< orphan*/  rx_submit_list; } ;
struct mux_rx {int (* callback ) (void*,int,int,struct tty_dev*,int) ;int /*<<< orphan*/  rx_submit_list; int /*<<< orphan*/  urb; int /*<<< orphan*/  buf; void* mux_dev; scalar_t__ offset; } ;
struct mux_dev {int (* rx_cb ) (void*,int,int,struct tty_dev*,int) ;struct rx_cxt rx; struct usb_device* usbdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MUX_RX_MAX_SIZE ; 
 int /*<<< orphan*/  gdm_mux_rcv_complete ; 
 struct mux_rx* FUNC0 (struct rx_cxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct rx_cxt*,struct mux_rx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mux_rx*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void *priv_dev,
			int (*cb)(void *data, int len, int tty_index,
				  struct tty_dev *tty_dev, int complete))
{
	struct mux_dev *mux_dev = priv_dev;
	struct usb_device *usbdev = mux_dev->usbdev;
	struct mux_rx *r;
	struct rx_cxt *rx = &mux_dev->rx;
	unsigned long flags;
	int ret;

	if (!usbdev) {
		FUNC3("device is disconnected\n");
		return -ENODEV;
	}

	r = FUNC0(rx);
	if (!r) {
		FUNC3("get_rx_struct fail\n");
		return -ENOMEM;
	}

	r->offset = 0;
	r->mux_dev = (void *)mux_dev;
	r->callback = cb;
	mux_dev->rx_cb = cb;

	FUNC7(r->urb,
			  usbdev,
			  FUNC9(usbdev, 0x86),
			  r->buf,
			  MUX_RX_MAX_SIZE,
			  gdm_mux_rcv_complete,
			  r);

	FUNC5(&rx->submit_list_lock, flags);
	FUNC1(&r->rx_submit_list, &rx->rx_submit_list);
	FUNC6(&rx->submit_list_lock, flags);

	ret = FUNC10(r->urb, GFP_KERNEL);

	if (ret) {
		FUNC5(&rx->submit_list_lock, flags);
		FUNC2(&r->rx_submit_list);
		FUNC6(&rx->submit_list_lock, flags);

		FUNC4(rx, r);

		FUNC3("usb_submit_urb ret=%d\n", ret);
	}

	FUNC8(usbdev);

	return ret;
}