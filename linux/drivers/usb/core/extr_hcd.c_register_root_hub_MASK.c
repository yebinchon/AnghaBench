#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct usb_device* root_hub; struct device* controller; } ;
struct usb_hcd {int rh_registered; TYPE_1__ self; } ;
struct TYPE_12__ {int /*<<< orphan*/  bcdUSB; } ;
struct TYPE_10__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_4__ desc; } ;
struct usb_device {int devnum; scalar_t__ speed; int /*<<< orphan*/  dev; int /*<<< orphan*/  lpm_capable; TYPE_6__ descriptor; TYPE_5__ ep0; TYPE_3__* bus; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  devicemap; } ;
struct TYPE_9__ {int devnum_next; TYPE_2__ devmap; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  USB_DT_DEVICE_SIZE ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_root_hub_lock ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_bus_idr_lock ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 
 int FUNC12 (struct usb_device*) ; 
 int FUNC13 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 
 int FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct usb_hcd *hcd)
{
	struct device *parent_dev = hcd->self.controller;
	struct usb_device *usb_dev = hcd->self.root_hub;
	const int devnum = 1;
	int retval;

	usb_dev->devnum = devnum;
	usb_dev->bus->devnum_next = devnum + 1;
	FUNC8 (devnum, usb_dev->bus->devmap.devicemap);
	FUNC16(usb_dev, USB_STATE_ADDRESS);

	FUNC6(&usb_bus_idr_lock);

	usb_dev->ep0.desc.wMaxPacketSize = FUNC1(64);
	retval = FUNC13(usb_dev, USB_DT_DEVICE_SIZE);
	if (retval != sizeof usb_dev->descriptor) {
		FUNC7(&usb_bus_idr_lock);
		FUNC2 (parent_dev, "can't read %s device descriptor %d\n",
				FUNC4(&usb_dev->dev), retval);
		return (retval < 0) ? retval : -EMSGSIZE;
	}

	if (FUNC5(usb_dev->descriptor.bcdUSB) >= 0x0201) {
		retval = FUNC12(usb_dev);
		if (!retval) {
			usb_dev->lpm_capable = FUNC11(usb_dev);
		} else if (usb_dev->speed >= USB_SPEED_SUPER) {
			FUNC7(&usb_bus_idr_lock);
			FUNC2(parent_dev, "can't read %s bos descriptor %d\n",
					FUNC4(&usb_dev->dev), retval);
			return retval;
		}
	}

	retval = FUNC15 (usb_dev);
	if (retval) {
		FUNC3 (parent_dev, "can't register root hub for %s, %d\n",
				FUNC4(&usb_dev->dev), retval);
	} else {
		FUNC9 (&hcd_root_hub_lock);
		hcd->rh_registered = 1;
		FUNC10 (&hcd_root_hub_lock);

		/* Did the HC die before the root hub was registered? */
		if (FUNC0(hcd))
			FUNC14 (hcd);	/* This time clean up */
	}
	FUNC7(&usb_bus_idr_lock);

	return retval;
}