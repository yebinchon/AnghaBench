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
 int /*<<< orphan*/  FUNC0 (struct usbhsg_gpriv*,unsigned short) ; 
 struct usbhsg_gpriv* FUNC1 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC2(struct usbhs_priv *priv,
						  struct usbhsg_uep *uep,
						  struct usb_ctrlrequest *ctrl)
{
	struct usbhsg_gpriv *gpriv = FUNC1(uep);
	unsigned short status = 0;

	FUNC0(gpriv, status);

	return 0;
}