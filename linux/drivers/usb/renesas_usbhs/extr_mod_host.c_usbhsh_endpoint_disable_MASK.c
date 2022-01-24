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
struct usbhsh_hpriv {int dummy; } ;
struct usbhsh_ep {int dummy; } ;
struct usbhsh_device {int dummy; } ;
struct usb_host_endpoint {int dummy; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhsh_hpriv*,struct usbhsh_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhsh_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhsh_hpriv*,struct usb_host_endpoint*) ; 
 struct usbhsh_ep* FUNC3 (struct usb_host_endpoint*) ; 
 struct usbhsh_hpriv* FUNC4 (struct usb_hcd*) ; 
 struct usbhsh_device* FUNC5 (struct usbhsh_ep*) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd,
				    struct usb_host_endpoint *ep)
{
	struct usbhsh_ep *uep = FUNC3(ep);
	struct usbhsh_device *udev;
	struct usbhsh_hpriv *hpriv;

	/*
	 * this function might be called manytimes by same hcd/ep
	 * in-endpoint == out-endpoint if ep == dcp.
	 */
	if (!uep)
		return;

	udev	= FUNC5(uep);
	hpriv	= FUNC4(hcd);

	FUNC2(hpriv, ep);

	/*
	 * if there is no endpoint,
	 * free device
	 */
	if (!FUNC1(udev))
		FUNC0(hpriv, udev);
}