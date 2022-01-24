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
struct usbhs_pkt {int /*<<< orphan*/  pipe; } ;
struct usbhsh_request {struct usbhs_pkt pkt; } ;
struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct usbhs_pkt*) ; 
 struct usbhsh_hpriv* FUNC1 (struct usb_hcd*) ; 
 struct usbhs_priv* FUNC2 (struct usbhsh_hpriv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*,struct usbhs_pkt*) ; 
 struct usbhsh_request* FUNC4 (struct urb*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct usbhsh_hpriv *hpriv = FUNC1(hcd);
	struct usbhsh_request *ureq = FUNC4(urb);

	if (ureq) {
		struct usbhs_priv *priv = FUNC2(hpriv);
		struct usbhs_pkt *pkt = &ureq->pkt;

		FUNC0(pkt->pipe, pkt);
		FUNC3(priv, pkt);
	}

	return 0;
}