#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_device_id {int match_flags; int idVendor; int idProduct; int bcdDevice_lo; int bcdDevice_hi; scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DEVICE_ID_MATCH_DEV_CLASS ; 
 int USB_DEVICE_ID_MATCH_DEV_HI ; 
 int USB_DEVICE_ID_MATCH_DEV_LO ; 
 int USB_DEVICE_ID_MATCH_DEV_PROTOCOL ; 
 int USB_DEVICE_ID_MATCH_DEV_SUBCLASS ; 
 int USB_DEVICE_ID_MATCH_PRODUCT ; 
 int USB_DEVICE_ID_MATCH_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_device_id* whitelist_table ; 

__attribute__((used)) static int FUNC2(struct usb_device *dev)
{
	struct usb_device_id	*id = whitelist_table;

	/* HNP test device is _never_ targeted (see OTG spec 6.6.6) */
	if ((FUNC1(dev->descriptor.idVendor) == 0x1a0a &&
	     FUNC1(dev->descriptor.idProduct) == 0xbadd))
		return 0;

	/* OTG PET device is always targeted (see OTG 2.0 ECN 6.4.2) */
	if ((FUNC1(dev->descriptor.idVendor) == 0x1a0a &&
	     FUNC1(dev->descriptor.idProduct) == 0x0200))
		return 1;

	/* NOTE: can't use usb_match_id() since interface caches
	 * aren't set up yet. this is cut/paste from that code.
	 */
	for (id = whitelist_table; id->match_flags; id++) {
		if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
		    id->idVendor != FUNC1(dev->descriptor.idVendor))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
		    id->idProduct != FUNC1(dev->descriptor.idProduct))
			continue;

		/* No need to test id->bcdDevice_lo != 0, since 0 is never
		   greater than any unsigned number. */
		if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO) &&
		    (id->bcdDevice_lo > FUNC1(dev->descriptor.bcdDevice)))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI) &&
		    (id->bcdDevice_hi < FUNC1(dev->descriptor.bcdDevice)))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_CLASS) &&
		    (id->bDeviceClass != dev->descriptor.bDeviceClass))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_SUBCLASS) &&
		    (id->bDeviceSubClass != dev->descriptor.bDeviceSubClass))
			continue;

		if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_PROTOCOL) &&
		    (id->bDeviceProtocol != dev->descriptor.bDeviceProtocol))
			continue;

		return 1;
	}

	/* add other match criteria here ... */


	/* OTG MESSAGE: report errors here, customize to match your product */
	FUNC0(&dev->dev, "device v%04x p%04x is not supported\n",
		FUNC1(dev->descriptor.idVendor),
		FUNC1(dev->descriptor.idProduct));

	return 0;
}