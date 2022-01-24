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
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  anchor; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {void* wLength; void* wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct rt2x00_async_read_data {int (* callback ) (struct rt2x00_dev*,int,u32) ;int /*<<< orphan*/  reg; TYPE_1__ cr; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_MULTI_READ ; 
 int /*<<< orphan*/  USB_VENDOR_REQUEST_IN ; 
 void* FUNC0 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_async_read_data*) ; 
 struct rt2x00_async_read_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt2x00usb_register_read_async_cb ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct rt2x00_async_read_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

void FUNC11(struct rt2x00_dev *rt2x00dev,
				   const unsigned int offset,
				   bool (*callback)(struct rt2x00_dev*, int, u32))
{
	struct usb_device *usb_dev = FUNC3(rt2x00dev->dev);
	struct urb *urb;
	struct rt2x00_async_read_data *rd;

	rd = FUNC2(sizeof(*rd), GFP_ATOMIC);
	if (!rd)
		return;

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb) {
		FUNC1(rd);
		return;
	}

	rd->rt2x00dev = rt2x00dev;
	rd->callback = callback;
	rd->cr.bRequestType = USB_VENDOR_REQUEST_IN;
	rd->cr.bRequest = USB_MULTI_READ;
	rd->cr.wValue = 0;
	rd->cr.wIndex = FUNC0(offset);
	rd->cr.wLength = FUNC0(sizeof(u32));

	FUNC6(urb, usb_dev, FUNC8(usb_dev, 0),
			     (unsigned char *)(&rd->cr), &rd->reg, sizeof(rd->reg),
			     rt2x00usb_register_read_async_cb, rd);
	FUNC5(urb, rt2x00dev->anchor);
	if (FUNC9(urb, GFP_ATOMIC) < 0) {
		FUNC10(urb);
		FUNC1(rd);
	}
	FUNC7(urb);
}