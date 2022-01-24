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
 int /*<<< orphan*/  USBHSG_STATUS_WEDGE ; 
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 struct usbhsg_gpriv* FUNC6 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC7 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC8(struct usbhs_priv *priv,
						   struct usbhsg_uep *uep,
						   struct usb_ctrlrequest *ctrl)
{
	struct usbhsg_gpriv *gpriv = FUNC6(uep);
	struct usbhs_pipe *pipe = FUNC7(uep);

	if (!FUNC5(gpriv, USBHSG_STATUS_WEDGE)) {
		FUNC0(pipe);
		FUNC2(pipe);
		FUNC1(pipe);
	}

	FUNC4(priv, uep, ctrl);

	FUNC3(pipe);

	return 0;
}