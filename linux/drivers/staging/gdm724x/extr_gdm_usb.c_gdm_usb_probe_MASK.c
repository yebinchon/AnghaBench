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
typedef  scalar_t__ u16 ;
struct usb_interface {int needs_remote_wakeup; int /*<<< orphan*/  usb_dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_3__ descriptor; } ;
struct phy_dev {int /*<<< orphan*/  gdm_ed; struct usb_interface* intf; struct usb_device* usbdev; int /*<<< orphan*/  get_endian; int /*<<< orphan*/  rcv_func; int /*<<< orphan*/  send_sdu_func; int /*<<< orphan*/  send_hci_func; void* priv_dev; } ;
struct lte_udev {int /*<<< orphan*/  gdm_ed; struct usb_interface* intf; struct usb_device* usbdev; int /*<<< orphan*/  get_endian; int /*<<< orphan*/  rcv_func; int /*<<< orphan*/  send_sdu_func; int /*<<< orphan*/  send_hci_func; void* priv_dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SUSPEND_TIMER ; 
 int /*<<< orphan*/  ENDIANNESS_BIG ; 
 int /*<<< orphan*/  ENDIANNESS_LITTLE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NETWORK_INTERFACE ; 
 scalar_t__ PID_GDM7243 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdm_usb_get_endian ; 
 int /*<<< orphan*/  gdm_usb_hci_send ; 
 int /*<<< orphan*/  gdm_usb_recv ; 
 int /*<<< orphan*/  gdm_usb_sdu_send ; 
 int FUNC2 (struct phy_dev*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_dev*) ; 
 struct phy_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_dev*) ; 
 int FUNC9 (struct phy_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct phy_dev*) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	int ret = 0;
	struct phy_dev *phy_dev = NULL;
	struct lte_udev *udev = NULL;
	u16 idVendor, idProduct;
	int bInterfaceNumber;
	struct usb_device *usbdev = FUNC3(intf);

	bInterfaceNumber = intf->cur_altsetting->desc.bInterfaceNumber;
	idVendor = FUNC0(usbdev->descriptor.idVendor);
	idProduct = FUNC0(usbdev->descriptor.idProduct);

	FUNC7("net vid = 0x%04x pid = 0x%04x\n", idVendor, idProduct);

	if (bInterfaceNumber > NETWORK_INTERFACE) {
		FUNC7("not a network device\n");
		return -ENODEV;
	}

	phy_dev = FUNC5(sizeof(*phy_dev), GFP_KERNEL);
	if (!phy_dev)
		return -ENOMEM;

	udev = FUNC5(sizeof(*udev), GFP_KERNEL);
	if (!udev) {
		ret = -ENOMEM;
		goto err_udev;
	}

	phy_dev->priv_dev = (void *)udev;
	phy_dev->send_hci_func = gdm_usb_hci_send;
	phy_dev->send_sdu_func = gdm_usb_sdu_send;
	phy_dev->rcv_func = gdm_usb_recv;
	phy_dev->get_endian = gdm_usb_get_endian;

	udev->usbdev = usbdev;
	ret = FUNC2(udev);
	if (ret < 0) {
		FUNC1(intf->usb_dev, "init_usb func failed\n");
		goto err_init_usb;
	}
	udev->intf = intf;

	intf->needs_remote_wakeup = 1;
	FUNC11(usbdev);
	FUNC6(&usbdev->dev, AUTO_SUSPEND_TIMER);

	/* List up hosts with big endians, otherwise,
	 * defaults to little endian
	 */
	if (idProduct == PID_GDM7243)
		udev->gdm_ed = ENDIANNESS_BIG;
	else
		udev->gdm_ed = ENDIANNESS_LITTLE;

	ret = FUNC9(udev);
	if (ret < 0) {
		FUNC1(intf->usb_dev, "request Mac address failed\n");
		goto err_mac_address;
	}

	FUNC10(phy_dev);
	FUNC12(usbdev);
	FUNC13(intf, phy_dev);

	return 0;

err_mac_address:
	FUNC8(udev);
err_init_usb:
	FUNC4(udev);
err_udev:
	FUNC4(phy_dev);

	return ret;
}