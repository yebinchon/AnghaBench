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
struct usbhsg_uep {struct usbhs_pipe* pipe; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int /*<<< orphan*/ * handler; struct usbhsg_uep* mod_private; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRDYSTS ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  usbhs_fifo_dma_pop_handler ; 
 int /*<<< orphan*/  usbhs_fifo_dma_push_handler ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbhs_pipe* FUNC7 (struct usbhs_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbhsg_uep* FUNC12 (struct usb_ep*) ; 
 struct usbhs_priv* FUNC13 (struct usbhsg_gpriv*) ; 
 struct usbhsg_gpriv* FUNC14 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC15(struct usb_ep *ep,
			 const struct usb_endpoint_descriptor *desc)
{
	struct usbhsg_uep *uep   = FUNC12(ep);
	struct usbhsg_gpriv *gpriv = FUNC14(uep);
	struct usbhs_priv *priv = FUNC13(gpriv);
	struct usbhs_pipe *pipe;
	int ret = -EIO;
	unsigned long flags;

	FUNC4(priv, flags);

	/*
	 * if it already have pipe,
	 * nothing to do
	 */
	if (uep->pipe) {
		FUNC5(uep->pipe);
		FUNC9(uep->pipe);
		ret = 0;
		goto usbhsg_ep_enable_end;
	}

	pipe = FUNC7(priv,
				 FUNC3(desc),
				 FUNC0(desc));
	if (pipe) {
		uep->pipe		= pipe;
		pipe->mod_private	= uep;

		/* set epnum / maxp */
		FUNC6(pipe, 0,
					 FUNC2(desc),
					 FUNC1(desc));

		/*
		 * usbhs_fifo_dma_push/pop_handler try to
		 * use dmaengine if possible.
		 * It will use pio handler if impossible.
		 */
		if (FUNC0(desc)) {
			pipe->handler = &usbhs_fifo_dma_push_handler;
		} else {
			pipe->handler = &usbhs_fifo_dma_pop_handler;
			FUNC11(priv, BRDYSTS,
					   FUNC8(pipe));
		}

		ret = 0;
	}

usbhsg_ep_enable_end:
	FUNC10(priv, flags);

	return ret;
}