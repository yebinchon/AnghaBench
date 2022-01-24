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
struct usb_host_endpoint {struct ed* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct td {int /*<<< orphan*/  urb; } ;
struct fhci_hcd {int /*<<< orphan*/  lock; } ;
struct ed {int /*<<< orphan*/ * td_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*,struct ed*) ; 
 struct td* FUNC1 (struct ed*) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_hcd*,int /*<<< orphan*/ ) ; 
 struct fhci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd,
				  struct usb_host_endpoint *ep)
{
	struct fhci_hcd *fhci;
	struct ed *ed;
	unsigned long flags;

	fhci = FUNC3(hcd);
	FUNC4(&fhci->lock, flags);
	ed = ep->hcpriv;
	if (ed) {
		while (ed->td_head != NULL) {
			struct td *td = FUNC1(ed);
			FUNC2(fhci, td->urb);
		}
		FUNC0(fhci, ed);
		ep->hcpriv = NULL;
	}
	FUNC5(&fhci->lock, flags);
}