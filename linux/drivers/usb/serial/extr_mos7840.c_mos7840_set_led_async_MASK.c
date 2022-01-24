#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct moschip_port {int /*<<< orphan*/  led_urb; struct usb_ctrlrequest* led_dr; TYPE_2__* port; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {TYPE_1__* serial; } ;
struct TYPE_3__ {struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MCS_WRREQ ; 
 int /*<<< orphan*/  MCS_WR_RTYPE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mos7840_set_led_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct moschip_port *mcs, __u16 wval,
				__u16 reg)
{
	struct usb_device *dev = mcs->port->serial->dev;
	struct usb_ctrlrequest *dr = mcs->led_dr;

	dr->bRequestType = MCS_WR_RTYPE;
	dr->bRequest = MCS_WRREQ;
	dr->wValue = FUNC0(wval);
	dr->wIndex = FUNC0(reg);
	dr->wLength = FUNC0(0);

	FUNC1(mcs->led_urb, dev, FUNC2(dev, 0),
		(unsigned char *)dr, NULL, 0, mos7840_set_led_callback, NULL);

	FUNC3(mcs->led_urb, GFP_ATOMIC);
}