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
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;

/* Variables and functions */
 int USB_ENDPOINT_HALT ; 
 int /*<<< orphan*/  FUNC0 (struct usbhsg_gpriv*,unsigned short) ; 
 scalar_t__ FUNC1 (struct usbhs_pipe*) ; 
 struct usbhsg_gpriv* FUNC2 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC3 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC4(struct usbhs_priv *priv,
						 struct usbhsg_uep *uep,
						 struct usb_ctrlrequest *ctrl)
{
	struct usbhsg_gpriv *gpriv = FUNC2(uep);
	struct usbhs_pipe *pipe = FUNC3(uep);
	unsigned short status = 0;

	if (FUNC1(pipe))
		status = 1 << USB_ENDPOINT_HALT;

	FUNC0(gpriv, status);

	return 0;
}