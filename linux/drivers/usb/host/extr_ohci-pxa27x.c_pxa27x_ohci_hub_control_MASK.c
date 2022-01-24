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
typedef  int u16 ;
struct usb_hcd {int dummy; } ;
struct pxa27x_ohci {int dummy; } ;

/* Variables and functions */
#define  ClearPortFeature 129 
 int EPIPE ; 
#define  SetPortFeature 128 
 int USB_PORT_FEAT_POWER ; 
 int FUNC0 (struct usb_hcd*,int,int,int,char*,int) ; 
 int FUNC1 (struct pxa27x_ohci*,int /*<<< orphan*/ ,int) ; 
 struct pxa27x_ohci* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
				   u16 wIndex, char *buf, u16 wLength)
{
	struct pxa27x_ohci *pxa_ohci = FUNC2(hcd);
	int ret;

	switch (typeReq) {
	case SetPortFeature:
	case ClearPortFeature:
		if (!wIndex || wIndex > 3)
			return -EPIPE;

		if (wValue != USB_PORT_FEAT_POWER)
			break;

		ret = FUNC1(pxa_ohci, wIndex - 1,
						 typeReq == SetPortFeature);
		if (ret)
			return ret;
		break;
	}

	return FUNC0(hcd, typeReq, wValue, wIndex, buf, wLength);
}