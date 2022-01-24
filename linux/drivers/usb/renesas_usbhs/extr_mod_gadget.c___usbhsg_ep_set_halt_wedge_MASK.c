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
struct usb_ep {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  USBHSG_STATUS_WEDGE ; 
 scalar_t__ FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,unsigned long) ; 
 scalar_t__ FUNC3 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_priv*,unsigned long) ; 
 struct usbhsg_uep* FUNC9 (struct usb_ep*) ; 
 struct device* FUNC10 (struct usbhsg_gpriv*) ; 
 struct usbhs_priv* FUNC11 (struct usbhsg_gpriv*) ; 
 int /*<<< orphan*/  FUNC12 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usbhsg_gpriv*,int /*<<< orphan*/ ) ; 
 struct usbhsg_gpriv* FUNC14 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC15 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC16(struct usb_ep *ep, int halt, int wedge)
{
	struct usbhsg_uep *uep = FUNC9(ep);
	struct usbhs_pipe *pipe = FUNC15(uep);
	struct usbhsg_gpriv *gpriv = FUNC14(uep);
	struct usbhs_priv *priv = FUNC11(gpriv);
	struct device *dev = FUNC10(gpriv);
	unsigned long flags;
	int ret = 0;

	FUNC1(dev, "set halt %d (pipe %d)\n",
		halt, FUNC6(pipe));

	/********************  spin lock ********************/
	FUNC2(priv, flags);

	/*
	 * According to usb_ep_set_halt()'s description, this function should
	 * return -EAGAIN if the IN endpoint has any queue or data. Note
	 * that the usbhs_pipe_is_dir_in() returns false if the pipe is an
	 * IN endpoint in the gadget mode.
	 */
	if (!FUNC5(pipe) && (FUNC0(pipe) ||
	    FUNC3(pipe))) {
		ret = -EAGAIN;
		goto out;
	}

	if (halt)
		FUNC7(pipe);
	else
		FUNC4(pipe);

	if (halt && wedge)
		FUNC13(gpriv, USBHSG_STATUS_WEDGE);
	else
		FUNC12(gpriv, USBHSG_STATUS_WEDGE);

out:
	FUNC8(priv, flags);
	/********************  spin unlock ******************/

	return ret;
}