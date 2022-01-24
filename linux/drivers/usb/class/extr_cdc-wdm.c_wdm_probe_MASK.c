#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; TYPE_1__* altsetting; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_4__* endpoint; TYPE_3__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_cdc_parsed_header {TYPE_2__* usb_cdc_dmm_desc; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  wMaxCommand; } ;
struct TYPE_5__ {int extralen; int /*<<< orphan*/ * extra; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WDM_DEFAULT_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_cdc_parsed_header*,struct usb_interface*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_interface*,struct usb_endpoint_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdm_manage_power ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, const struct usb_device_id *id)
{
	int rv = -EINVAL;
	struct usb_host_interface *iface;
	struct usb_endpoint_descriptor *ep;
	struct usb_cdc_parsed_header hdr;
	u8 *buffer = intf->altsetting->extra;
	int buflen = intf->altsetting->extralen;
	u16 maxcom = WDM_DEFAULT_BUFSIZE;

	if (!buffer)
		goto err;

	FUNC0(&hdr, intf, buffer, buflen);

	if (hdr.usb_cdc_dmm_desc)
		maxcom = FUNC1(hdr.usb_cdc_dmm_desc->wMaxCommand);

	iface = intf->cur_altsetting;
	if (iface->desc.bNumEndpoints != 1)
		goto err;
	ep = &iface->endpoint[0].desc;

	rv = FUNC2(intf, ep, maxcom, &wdm_manage_power);

err:
	return rv;
}