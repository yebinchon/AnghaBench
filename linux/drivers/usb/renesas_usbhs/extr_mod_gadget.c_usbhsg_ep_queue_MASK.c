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
struct usbhsg_request {int dummy; } ;
struct usbhsg_gpriv {int /*<<< orphan*/  driver; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ FUNC0 (int) ; 
 struct usbhsg_uep* FUNC1 (struct usb_ep*) ; 
 scalar_t__ FUNC2 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhsg_uep*,struct usbhsg_request*) ; 
 struct usbhsg_request* FUNC4 (struct usb_request*) ; 
 struct usbhsg_gpriv* FUNC5 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC6 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *ep, struct usb_request *req,
			  gfp_t gfp_flags)
{
	struct usbhsg_uep *uep = FUNC1(ep);
	struct usbhsg_gpriv *gpriv = FUNC5(uep);
	struct usbhsg_request *ureq = FUNC4(req);
	struct usbhs_pipe *pipe = FUNC6(uep);

	/* param check */
	if (FUNC2(gpriv)	||
	    FUNC0(!gpriv->driver)		||
	    FUNC0(!pipe))
		return -ESHUTDOWN;

	FUNC3(uep, ureq);

	return 0;
}