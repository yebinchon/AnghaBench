#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct tty_dev {int /*<<< orphan*/  usb_state; struct usb_interface* intf; struct tty_dev* tty_dev; int /*<<< orphan*/  send_control; int /*<<< orphan*/  recv_func; int /*<<< orphan*/  send_func; void* priv_dev; struct usb_interface* control_intf; struct usb_device* usbdev; } ;
struct mux_dev {int /*<<< orphan*/  usb_state; struct usb_interface* intf; struct mux_dev* tty_dev; int /*<<< orphan*/  send_control; int /*<<< orphan*/  recv_func; int /*<<< orphan*/  send_func; void* priv_dev; struct usb_interface* control_intf; struct usb_device* usbdev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM_NORMAL ; 
 int TTY_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdm_mux_recv ; 
 int /*<<< orphan*/  gdm_mux_send ; 
 int /*<<< orphan*/  gdm_mux_send_control ; 
 int FUNC1 (struct tty_dev*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_dev*) ; 
 struct tty_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tty_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct tty_dev*) ; 

__attribute__((used)) static int FUNC11(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct mux_dev *mux_dev;
	struct tty_dev *tty_dev;
	u16 idVendor, idProduct;
	int bInterfaceNumber;
	int ret;
	int i;
	struct usb_device *usbdev = FUNC2(intf);

	bInterfaceNumber = intf->cur_altsetting->desc.bInterfaceNumber;

	idVendor = FUNC0(usbdev->descriptor.idVendor);
	idProduct = FUNC0(usbdev->descriptor.idProduct);

	FUNC5("mux vid = 0x%04x pid = 0x%04x\n", idVendor, idProduct);

	if (bInterfaceNumber != 2)
		return -ENODEV;

	mux_dev = FUNC4(sizeof(*mux_dev), GFP_KERNEL);
	if (!mux_dev)
		return -ENOMEM;

	tty_dev = FUNC4(sizeof(*tty_dev), GFP_KERNEL);
	if (!tty_dev) {
		ret = -ENOMEM;
		goto err_free_mux;
	}

	mux_dev->usbdev = usbdev;
	mux_dev->control_intf = intf;

	ret = FUNC1(mux_dev);
	if (ret)
		goto err_free_usb;

	tty_dev->priv_dev = (void *)mux_dev;
	tty_dev->send_func = gdm_mux_send;
	tty_dev->recv_func = gdm_mux_recv;
	tty_dev->send_control = gdm_mux_send_control;

	ret = FUNC6(tty_dev, &intf->dev);
	if (ret)
		goto err_unregister_tty;

	for (i = 0; i < TTY_MAX_COUNT; i++)
		mux_dev->tty_dev = tty_dev;

	mux_dev->intf = intf;
	mux_dev->usb_state = PM_NORMAL;

	FUNC9(usbdev);
	FUNC10(intf, tty_dev);

	return 0;

err_unregister_tty:
	FUNC8(tty_dev);
err_free_usb:
	FUNC7(mux_dev);
	FUNC3(tty_dev);
err_free_mux:
	FUNC3(mux_dev);

	return ret;
}