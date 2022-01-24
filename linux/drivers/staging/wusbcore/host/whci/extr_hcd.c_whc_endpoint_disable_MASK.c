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
struct wusbhc {int dummy; } ;
struct whc_qset {int dummy; } ;
struct whc {int dummy; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; struct whc_qset* hcpriv; } ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct whc*,struct whc_qset*) ; 
 int /*<<< orphan*/  FUNC1 (struct whc*,struct whc_qset*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC4 (struct usb_hcd*) ; 
 struct whc* FUNC5 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *usb_hcd,
				 struct usb_host_endpoint *ep)
{
	struct wusbhc *wusbhc = FUNC4(usb_hcd);
	struct whc *whc = FUNC5(wusbhc);
	struct whc_qset *qset;

	qset = ep->hcpriv;
	if (qset) {
		ep->hcpriv = NULL;
		if (FUNC2(&ep->desc)
		    || FUNC3(&ep->desc))
			FUNC0(whc, qset);
		else
			FUNC1(whc, qset);
	}
}