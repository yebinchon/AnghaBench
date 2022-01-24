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
struct uwb_rc {struct hwarc* priv; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; struct device dev; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct hwarc {int /*<<< orphan*/ * rd_buffer; int /*<<< orphan*/ * neep_urb; struct usb_interface* usb_iface; } ;
struct TYPE_4__ {TYPE_1__* endpoint; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  hwarc_neep_cb ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hwarc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct uwb_rc *rc)
{
	struct hwarc *hwarc = rc->priv;
	struct usb_interface *iface = hwarc->usb_iface;
	struct usb_device *usb_dev = FUNC3(iface);
	struct device *dev = &iface->dev;
	int result;
	struct usb_endpoint_descriptor *epd;

	epd = &iface->cur_altsetting->endpoint[0].desc;
	hwarc->rd_buffer = (void *) FUNC0(GFP_KERNEL);
	if (hwarc->rd_buffer == NULL) {
		FUNC1(dev, "Unable to allocate notification's read buffer\n");
		goto error_rd_buffer;
	}
	hwarc->neep_urb = FUNC4(0, GFP_KERNEL);
	if (hwarc->neep_urb == NULL)
		goto error_urb_alloc;
	FUNC5(hwarc->neep_urb, usb_dev,
			 FUNC7(usb_dev, epd->bEndpointAddress),
			 hwarc->rd_buffer, PAGE_SIZE,
			 hwarc_neep_cb, hwarc, epd->bInterval);
	result = FUNC8(hwarc->neep_urb, GFP_ATOMIC);
	if (result < 0) {
		FUNC1(dev, "Cannot submit notification URB: %d\n", result);
		goto error_neep_submit;
	}
	return 0;

error_neep_submit:
	FUNC6(hwarc->neep_urb);
	hwarc->neep_urb = NULL;
error_urb_alloc:
	FUNC2((unsigned long)hwarc->rd_buffer);
	hwarc->rd_buffer = NULL;
error_rd_buffer:
	return -ENOMEM;
}