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
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ; 
 struct usbhs_pipe* FUNC2 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC3(struct usbhs_priv *priv,
						 struct usbhsg_uep *uep,
						 struct usb_ctrlrequest *ctrl)
{
	struct usbhs_pipe *pipe = FUNC2(uep);

	FUNC0(pipe);

	FUNC1(priv, uep, ctrl);

	return 0;
}