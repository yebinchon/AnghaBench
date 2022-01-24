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
typedef  int u16 ;
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  ClearPortFeature 132 
 int EPIPE ; 
#define  GetPortStatus 131 
 int RH_PS_OCIC ; 
 int RH_PS_POCI ; 
 int RH_PS_PPS ; 
#define  SetPortFeature 130 
#define  USB_PORT_FEAT_C_OVER_CURRENT 129 
#define  USB_PORT_FEAT_POWER 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*) ; 
 int ocic_mask ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*,int) ; 
 int FUNC6 (struct usb_hcd*,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
				  u16 wIndex, char *buf, u16 wLength)
{
	struct device *dev		= hcd->self.controller;
	int temp;

	switch (typeReq) {
	case GetPortStatus:
		/* Check the port number */
		if (wIndex != 1)
			break;

		FUNC1(dev, "GetPortStatus(%u)\n", wIndex);

		temp = FUNC8(FUNC2(hcd), wIndex - 1);

		/* The port power status (PPS) bit defaults to 1 */
		if (!FUNC4(hcd))
			temp &= ~RH_PS_PPS;

		/* The port over-current indicator (POCI) bit is always 0 */
		if (FUNC3(hcd) > 0)
			temp |=  RH_PS_POCI;

		/* The over-current indicator change (OCIC) bit is 0 too */
		if (ocic_mask & (1 << wIndex))
			temp |=  RH_PS_OCIC;

		FUNC7(FUNC0(temp), (__le32 *)buf);
		return 0;
	case SetPortFeature:
		temp = 1;
		goto check_port;
	case ClearPortFeature:
		temp = 0;

check_port:
		/* Check the port number */
		if (wIndex != 1)
			break;

		switch (wValue) {
		case USB_PORT_FEAT_POWER:
			FUNC1(dev, "%sPortFeature(%u): %s\n",
				temp ? "Set" : "Clear", wIndex, "POWER");

			return FUNC5(hcd, temp) ? -EPIPE : 0;
		case USB_PORT_FEAT_C_OVER_CURRENT:
			FUNC1(dev, "%sPortFeature(%u): %s\n",
				temp ? "Set" : "Clear", wIndex,
				"C_OVER_CURRENT");

			if (temp)
				ocic_mask |= 1 << wIndex;
			else
				ocic_mask &= ~(1 << wIndex);
			return 0;
		}
	}

	return FUNC6(hcd, typeReq, wValue,
			wIndex, buf, wLength);
}