#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct uvc_input_header_descriptor {int /*<<< orphan*/  bEndpointAddress; void* wTotalLength; } ;
struct uvc_header_descriptor {int bInCollection; int /*<<< orphan*/ * baInterfaceNr; void* wTotalLength; } ;
struct TYPE_13__ {TYPE_2__* ep; } ;
struct TYPE_11__ {struct uvc_descriptor_header** fs_streaming; struct uvc_descriptor_header** fs_control; struct uvc_descriptor_header** hs_streaming; struct uvc_descriptor_header** ss_streaming; struct uvc_descriptor_header** ss_control; } ;
struct uvc_device {TYPE_3__ video; int /*<<< orphan*/  streaming_intf; TYPE_1__ desc; } ;
struct uvc_descriptor_header {int dummy; } ;
struct usb_descriptor_header {scalar_t__ bLength; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_14__ {unsigned int bLength; } ;
struct TYPE_12__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct usb_descriptor_header** FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC1 (void*,struct usb_descriptor_header**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct usb_descriptor_header**,struct usb_descriptor_header const* const*) ; 
 void* FUNC3 (unsigned int) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_4__ uvc_control_cs_ep ; 
 TYPE_4__ uvc_control_ep ; 
 TYPE_4__ uvc_control_intf ; 
 struct usb_descriptor_header** uvc_fs_streaming ; 
 struct usb_descriptor_header** uvc_hs_streaming ; 
 TYPE_4__ uvc_iad ; 
 TYPE_4__ uvc_ss_control_comp ; 
 struct usb_descriptor_header** uvc_ss_streaming ; 
 TYPE_4__ uvc_streaming_intf_alt0 ; 

__attribute__((used)) static struct usb_descriptor_header **
FUNC5(struct uvc_device *uvc, enum usb_device_speed speed)
{
	struct uvc_input_header_descriptor *uvc_streaming_header;
	struct uvc_header_descriptor *uvc_control_header;
	const struct uvc_descriptor_header * const *uvc_control_desc;
	const struct uvc_descriptor_header * const *uvc_streaming_cls;
	const struct usb_descriptor_header * const *uvc_streaming_std;
	const struct usb_descriptor_header * const *src;
	struct usb_descriptor_header **dst;
	struct usb_descriptor_header **hdr;
	unsigned int control_size;
	unsigned int streaming_size;
	unsigned int n_desc;
	unsigned int bytes;
	void *mem;

	switch (speed) {
	case USB_SPEED_SUPER:
		uvc_control_desc = uvc->desc.ss_control;
		uvc_streaming_cls = uvc->desc.ss_streaming;
		uvc_streaming_std = uvc_ss_streaming;
		break;

	case USB_SPEED_HIGH:
		uvc_control_desc = uvc->desc.fs_control;
		uvc_streaming_cls = uvc->desc.hs_streaming;
		uvc_streaming_std = uvc_hs_streaming;
		break;

	case USB_SPEED_FULL:
	default:
		uvc_control_desc = uvc->desc.fs_control;
		uvc_streaming_cls = uvc->desc.fs_streaming;
		uvc_streaming_std = uvc_fs_streaming;
		break;
	}

	if (!uvc_control_desc || !uvc_streaming_cls)
		return FUNC0(-ENODEV);

	/* Descriptors layout
	 *
	 * uvc_iad
	 * uvc_control_intf
	 * Class-specific UVC control descriptors
	 * uvc_control_ep
	 * uvc_control_cs_ep
	 * uvc_ss_control_comp (for SS only)
	 * uvc_streaming_intf_alt0
	 * Class-specific UVC streaming descriptors
	 * uvc_{fs|hs}_streaming
	 */

	/* Count descriptors and compute their size. */
	control_size = 0;
	streaming_size = 0;
	bytes = uvc_iad.bLength + uvc_control_intf.bLength
	      + uvc_control_ep.bLength + uvc_control_cs_ep.bLength
	      + uvc_streaming_intf_alt0.bLength;

	if (speed == USB_SPEED_SUPER) {
		bytes += uvc_ss_control_comp.bLength;
		n_desc = 6;
	} else {
		n_desc = 5;
	}

	for (src = (const struct usb_descriptor_header **)uvc_control_desc;
	     *src; ++src) {
		control_size += (*src)->bLength;
		bytes += (*src)->bLength;
		n_desc++;
	}
	for (src = (const struct usb_descriptor_header **)uvc_streaming_cls;
	     *src; ++src) {
		streaming_size += (*src)->bLength;
		bytes += (*src)->bLength;
		n_desc++;
	}
	for (src = uvc_streaming_std; *src; ++src) {
		bytes += (*src)->bLength;
		n_desc++;
	}

	mem = FUNC4((n_desc + 1) * sizeof(*src) + bytes, GFP_KERNEL);
	if (mem == NULL)
		return NULL;

	hdr = mem;
	dst = mem;
	mem += (n_desc + 1) * sizeof(*src);

	/* Copy the descriptors. */
	FUNC1(mem, dst, &uvc_iad);
	FUNC1(mem, dst, &uvc_control_intf);

	uvc_control_header = mem;
	FUNC2(mem, dst,
		(const struct usb_descriptor_header **)uvc_control_desc);
	uvc_control_header->wTotalLength = FUNC3(control_size);
	uvc_control_header->bInCollection = 1;
	uvc_control_header->baInterfaceNr[0] = uvc->streaming_intf;

	FUNC1(mem, dst, &uvc_control_ep);
	if (speed == USB_SPEED_SUPER)
		FUNC1(mem, dst, &uvc_ss_control_comp);

	FUNC1(mem, dst, &uvc_control_cs_ep);
	FUNC1(mem, dst, &uvc_streaming_intf_alt0);

	uvc_streaming_header = mem;
	FUNC2(mem, dst,
		(const struct usb_descriptor_header**)uvc_streaming_cls);
	uvc_streaming_header->wTotalLength = FUNC3(streaming_size);
	uvc_streaming_header->bEndpointAddress = uvc->video.ep->address;

	FUNC2(mem, dst, uvc_streaming_std);

	*dst = NULL;
	return hdr;
}