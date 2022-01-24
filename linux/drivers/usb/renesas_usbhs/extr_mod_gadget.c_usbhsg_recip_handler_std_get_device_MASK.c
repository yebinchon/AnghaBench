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
struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBHSG_STATUS_SELF_POWERED ; 
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  FUNC0 (struct usbhsg_gpriv*,unsigned short) ; 
 scalar_t__ FUNC1 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 struct usbhsg_gpriv* FUNC2 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC3(struct usbhs_priv *priv,
					       struct usbhsg_uep *uep,
					       struct usb_ctrlrequest *ctrl)
{
	struct usbhsg_gpriv *gpriv = FUNC2(uep);
	unsigned short status = 0;

	if (FUNC1(gpriv, USBHSG_STATUS_SELF_POWERED))
		status = 1 << USB_DEVICE_SELF_POWERED;

	FUNC0(gpriv, status);

	return 0;
}