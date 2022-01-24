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
typedef  int /*<<< orphan*/  u16 ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  ClearHubFeature 134 
#define  ClearPortFeature 133 
 int EPIPE ; 
#define  GetHubDescriptor 132 
#define  GetHubStatus 131 
#define  GetPortStatus 130 
#define  SetHubFeature 129 
#define  SetPortFeature 128 
 int FUNC0 (struct usbhsh_hpriv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbhsh_hpriv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbhsh_hpriv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 struct usbhsh_hpriv* FUNC5 (struct usb_hcd*) ; 
 struct usbhs_priv* FUNC6 (struct usbhsh_hpriv*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhsh_hpriv*) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
			      u16 wIndex, char *buf, u16 wLength)
{
	struct usbhsh_hpriv *hpriv = FUNC5(hcd);
	struct usbhs_priv *priv = FUNC6(hpriv);
	struct device *dev = FUNC4(priv);
	int ret = -EPIPE;

	switch (typeReq) {

	/* Hub Feature */
	case ClearHubFeature:
	case SetHubFeature:
		ret = FUNC1(hpriv, typeReq,
					       wValue, wIndex, buf, wLength);
		break;

	/* Port Feature */
	case SetPortFeature:
	case ClearPortFeature:
		ret = FUNC2(hpriv, typeReq,
						wValue, wIndex, buf, wLength);
		break;

	/* Get status */
	case GetHubStatus:
	case GetPortStatus:
	case GetHubDescriptor:
		ret = FUNC0(hpriv, typeReq,
					      wValue, wIndex, buf, wLength);
		break;
	}

	FUNC3(dev, "typeReq = %x, ret = %d, port_stat = %x\n",
		typeReq, ret, FUNC7(hpriv));

	return ret;
}