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
struct zd_usb {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_DATA_IN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  USB_MAX_RX_SIZE ; 
 int /*<<< orphan*/  rx_urb_complete ; 
 void* FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC5 (struct zd_usb*) ; 

__attribute__((used)) static struct urb *FUNC6(struct zd_usb *usb)
{
	struct usb_device *udev = FUNC5(usb);
	struct urb *urb;
	void *buffer;

	urb = FUNC1(0, GFP_KERNEL);
	if (!urb)
		return NULL;
	buffer = FUNC0(udev, USB_MAX_RX_SIZE, GFP_KERNEL,
				    &urb->transfer_dma);
	if (!buffer) {
		FUNC3(urb);
		return NULL;
	}

	FUNC2(urb, udev, FUNC4(udev, EP_DATA_IN),
			  buffer, USB_MAX_RX_SIZE,
			  rx_urb_complete, usb);
	urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	return urb;
}