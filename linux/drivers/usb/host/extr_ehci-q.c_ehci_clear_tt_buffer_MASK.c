#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {TYPE_2__* dev; int /*<<< orphan*/  pipe; } ;
struct ehci_qh {int clearing_tt; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_7__ {struct usb_device* root_hub; } ;
struct TYPE_8__ {TYPE_3__ self; } ;
struct TYPE_6__ {TYPE_1__* tt; int /*<<< orphan*/  devnum; int /*<<< orphan*/  ttport; } ;
struct TYPE_5__ {struct usb_device* hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 TYPE_4__* FUNC2 (struct ehci_hcd*) ; 
 scalar_t__ FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ehci_hcd *ehci, struct ehci_qh *qh,
		struct urb *urb, u32 token)
{

	/* If an async split transaction gets an error or is unlinked,
	 * the TT buffer may be left in an indeterminate state.  We
	 * have to clear the TT buffer.
	 *
	 * Note: this routine is never called for Isochronous transfers.
	 */
	if (urb->dev->tt && !FUNC5(urb->pipe) && !qh->clearing_tt) {
#ifdef CONFIG_DYNAMIC_DEBUG
		struct usb_device *tt = urb->dev->tt->hub;
		dev_dbg(&tt->dev,
			"clear tt buffer port %d, a%d ep%d t%08x\n",
			urb->dev->ttport, urb->dev->devnum,
			usb_pipeendpoint(urb->pipe), token);
#endif /* CONFIG_DYNAMIC_DEBUG */
		if (!FUNC1(ehci)
				|| urb->dev->tt->hub !=
				   FUNC2(ehci)->self.root_hub) {
			if (FUNC3(urb) == 0)
				qh->clearing_tt = 1;
		} else {

			/* REVISIT ARC-derived cores don't clear the root
			 * hub TT buffer in this way...
			 */
		}
	}
}